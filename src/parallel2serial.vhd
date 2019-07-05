library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parallel2serial is
    port (
        save : in std_logic;
        a, b, c, d, e, f, g : in std_logic;
        saved : out std_logic;
        serial : out std_logic_vector(6 downto 0)
        
    );
end entity parallel2serial;

architecture rtl of parallel2serial is

    signal serial_aux : std_logic_vector(serial'range);
    
begin
	 -- a eh o msb
    saved <= save;
    serial_aux(6) <= a;                
    serial_aux(5) <= b;        
    serial_aux(4) <= c;        
    serial_aux(3) <= d;        
    serial_aux(2) <= e;        
    serial_aux(1) <= f;        
    serial_aux(0) <= g;        
    
	 with save select serial <= 
			serial_aux when '1', 
			"0000000" when others;
    
end architecture rtl;