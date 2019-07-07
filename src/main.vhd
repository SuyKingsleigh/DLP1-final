library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main is
  generic(
      n : natural := 11;
      n_ascii : natural := 7;
      n_ssd : natural := 7;
      n_msg : natural := 8
  ); -- start, 8 bits msg, paridade, 2 stop; 
  port (
      a, b, c, d, e, f, g : in std_logic; 
      save_in, main_rst_IN, main_clk, parity_mode : in std_logic;
      sel : in std_logic_vector(1 downto 0);
      tx : out std_logic;
 --      d0, d1, d2, d3, d4, d5, d6, d7 : out std_logic_vector(n_ascii - 1 downto 0);
		parity_mode_out, paridade, baudrate, led, led_clk : out std_logic

  );
end main;

architecture rtl of main is
  
-------- COMPONENTES ---------------------------------------------------------
  component input2ssd is 
    generic(
      n_of_bits_ascii : natural := 7;
      ssd_bits : natural := 7
    );

    port (
      ascii : in std_logic_vector(n_of_bits_ascii -1 downto 0);
      ssd : out std_logic_vector(ssd_bits -1 downto 0 )
    );
  end component;

  component parallel2serial is 
    port (
      a, b, c, d, e, f, g: in std_logic;
	  clk, rst : in std_logic;
      save : in std_logic;
      saved : out std_logic;
      serial : out std_logic_vector(6 downto 0)
    );
  end component;

  component parity_generator is 
    generic(n : natural := 7);
    port (
        parity_mode : in std_logic;
        data : in std_logic_vector(n-1 downto 0);
        x : out std_logic_vector(n downto 0);
        parity : out std_logic
    );
  end component;
  
  component baudrate_generator is 
    generic(
            clk_freq : natural := 4; 
            b9600 : natural := 1; --11
            b1 : natural :=  2; -- 00
            b4: natural := 3; -- 01
            b8 : natural := 4 -- 10

	-------------- COISO PRA TESTES --------------
--			   clk_freq : natural := 5000; 
--            b9600 : natural := 5; --11
--            b1 : natural :=  2500; -- 00
--            b4: natural := 1250; -- 01
--            b8 : natural := 625 -- 10
		  );
    port (
        rst, clk : in std_logic; 
        sel : in std_logic_vector(1 downto 0); 
		  baud : out std_logic
	 );
  end component; 

  component transmitter is 
      generic(
        n : natural := 8 -- numero de bits ascii + paridade 
      );
    port (
        a : in std_logic_vector(n - 1 downto 0);
        send, rst, clk : in std_logic;
        tx, led : out std_logic
    );
  end component;

  component selector is 
    port (
        save, rst : in std_logic; 
        data : in std_logic_vector(n_ascii - 1 downto 0);
        d0, d1, d2, d3, d4, d5, d6, d7 : out std_logic_vector(n_ascii - 1 downto 0)
    );
  end component; 

------------------------------------------------------------------------------
------------- SINAIS ---------------------------------------------------------
signal saved_sign : std_logic; 
signal ascii_sign : std_logic_vector(n_ascii - 1 downto 0);
signal ssd_sign : std_logic_vector(n_ssd - 1 downto 0);
signal parity_sign : std_logic_vector(n_ascii downto 0); 
signal baud_rate_sign, led_sign :  std_logic;
signal parity_mode_sign : std_logic;
signal serial2parallel_sign : std_logic_vector(n_msg-1 downto 0);
signal main_rst : std_logic;
signal save : std_logic;

--------------------------------------------------------------------------------
begin
  paralelo_serial : parallel2serial 
  port map(
      a => a,
      b => b,
      c => c, 
      d => d, 
      e => e, 
      f => f, 
      g => g, 
	   clk => baud_rate_sign,
	   rst => main_rst,
      save => save,
      saved => saved_sign, 
      serial => ascii_sign
    );
  
  to_ssd : input2ssd 
  port map(
    ascii => ascii_sign, 
    ssd => ssd_sign
  );

  parityGenerator : parity_generator
  port map(
    parity_mode => parity_mode,
    data => ascii_sign, 
    x => parity_sign,
    parity => paridade
  );  

  gerador_baudrate : baudrate_generator 
  generic map(
       clk_freq => 50000000, 
       b9600 => 5208, --11
       b1 => 25000000, -- 00
       b4 =>12500000, -- 01
       b8 => 6250000 -- 10
  )
-- generic map(
--       clk_freq => 4, 
--       b9600 => 1, --11
--       b1 => 2, -- 00
--       b4 =>3, -- 01
--       b8 => 4 -- 10
--  )
  port map(
    rst => main_rst,
    clk => main_clk,
    sel => sel, 
    baud => baud_rate_sign
  );
  
  transmissor : transmitter 
  port map(
    a => parity_sign, -- paridade + saida 
    rst => main_rst, 
    send => saved_sign, 
    tx => tx, 
    clk => baud_rate_sign,
	 led => led_sign
  );


 seletor : selector 
 port map(
   save => saved_sign,
   data => ssd_sign,
   rst => main_rst, 
     d0 => d0, 
     d1 => d1, 
     d2 => d2, 
     d3 => d3, 
     d4 => d4, 
     d5 => d5, 
     d6 => d6, 
     d7 => d7 
 );
 -------------------- CODIGO CONCORRENTE ----------------------------------------------------------
 
 baudrate <= baud_rate_sign; -- da o baudrate gerado
 parity_mode_sign <= parity_mode; -- define o modo de paridade 
 parity_mode_out <= parity_mode_sign; -- joga pra saida o modo de paridade 
 
 -- led de transmissao 
 led <= led_sign;  
 led_clk <= baud_rate_sign;
 
 -- botoes sao invertidos 
 main_rst <= not main_rst_IN; 
 save <= not save_in; -- 
end architecture rtl;