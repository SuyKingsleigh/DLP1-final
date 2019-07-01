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
      serial_in : in std_logic;
      other_clk_in : in std_logic;
      save, main_rst, main_clk, parity_mode : in std_logic;
      sel : in std_logic_vector(1 downto 0);
      tx : out std_logic;
      erro_trans : out std_logic;
      parity_mode_out, paridade, baudrate : out std_logic;
      outA, outB, outC, outD, outE, outF, outG : out std_logic
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
        tx : out std_logic
    );
  end component;

  component serial2parallel is 
    port (
      serial_in, clk : in std_logic; 
      a,b,c,d,e,f,g, parity_bit : out std_logic    
    );
  end component;

  component parity_checker is 
    port (
      parity_mode : in std_logic; 
      data : in std_logic_vector(n_msg -1 downto 0);
      x : out std_logic
  );
  end component;

------------------------------------------------------------------------------
------------- SINAIS ---------------------------------------------------------
signal saved_sign : std_logic; 
signal ascii_sign : std_logic_vector(n_ascii - 1 downto 0);
signal ssd_sign : std_logic_vector(n_ssd - 1 downto 0);
signal parity_sign : std_logic_vector(n_ascii downto 0); 
signal baud_rate_sign :  std_logic;
signal parity_mode_sign : std_logic;
signal serial2parallel_sign : std_logic_vector(n_msg-1 downto 0);

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
    clk => baud_rate_sign
  );

  
  serialtoparallel: serial2parallel 
  port map(
    serial_in => serial_in, 
    clk => other_clk_in, 
    a => serial2parallel_sign(0),
    b => serial2parallel_sign(1),
    c => serial2parallel_sign(2),
    d => serial2parallel_sign(3),
    e => serial2parallel_sign(4),
    f => serial2parallel_sign(5),
    g => serial2parallel_sign(6),
    parity_bit => serial2parallel_sign(7)
  );

  parityChecker : parity_checker 
  port map(
      parity_mode => parity_mode,
      data => serial2parallel_sign,
      x => erro_trans
  );
 -------------------- CODIGO CONCORRENTE ----------------------------------------------------------
 
 baudrate <= baud_rate_sign; -- da o baudrate gerado
 parity_mode_sign <= parity_mode;
 parity_mode_out <= parity_mode_sign;

  -- mensagem recebida serial->paralelo
  outA <= serial2parallel_sign(0);
  outB <= serial2parallel_sign(1);
  outC <= serial2parallel_sign(2);
  outD <= serial2parallel_sign(3);
  outE <= serial2parallel_sign(4);
  outF <= serial2parallel_sign(5);
  outG <= serial2parallel_sign(6);

end architecture rtl;