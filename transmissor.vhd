library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity transmissor is
  generic(n : natural := 12); -- start, 8 bits msg, paridade, 2 stop; 
  port (
      a, b, c, d, e, f, g, h : in std_logic; 
      clk, rst, parity, testes: in std_logic; 
      baudrate : in std_logic_vector(1 downto 0);
      tx : out std_logic_vector(n -1 downto 0);  
  );
end transmissor;

architecture rtl of transmissor is
  
begin
  -- receber entrada 
  -- converter paralelo -> serial 
  -- converter pra pra ascii 
  
  
  
end architecture rtl;