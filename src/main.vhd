library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity main is
  generic(
      n : natural := 12;
      n_ascii : natural := 7;
      n_ssd : natural := 7
  ); -- start, 8 bits msg, paridade, 2 stop; 
  port (
      a, b, c, d, e, f, g : in std_logic; 
      save, main_rst, main_clk, parity_mode : in std_logic;
      sel : in std_logic_vector(1 downto 0);
      tx : out std_logic_vector(n -1 downto 0);
      paridade, baudrate : out std_logic
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
------------------------------------------------------------------------------
------------- SINAIS ---------------------------------------------------------
signal saved_sign : std_logic; 
signal ascii_sign : std_logic_vector(n_ascii - 1 downto 0);
signal ssd_sign : std_logic_vector(n_ssd - 1 downto 0);
signal parity_sign : std_logic_vector(n_ascii downto 0); 
signal baud_rate_sign :  std_logic;

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

end architecture rtl;