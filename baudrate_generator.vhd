library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity baudrate_generator is
    generic(clk_freq : natural := 50000000); --deu problema com natural
    port (
        rst, clk : in std_logic; 
        sel : in std_logic_vector(1 downto 0); 
        ena : out std_logic
    );
end entity baudrate_generator;

architecture rtl of baudrate_generator is
    
begin
    
    
    
end architecture rtl;