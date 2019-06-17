library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


---------------------------------------------------------------------------------
-- Essa entidade tem como funo separar os bits da entrada de 7 em 7 (dado que ascii tem 7 bits)
-- E converter para SSD 

entity input2ssd is
    generic(
        n_of_displays : natural := 8;
        n_of_bits_ascii : natural := 7;
        ssd_bits : natural := 7
    );

    port (
        ascii_in : in std_logic_vector(n_of_displays * n_of_bits_ascii - 1 downto 0);  
        ssd0, ssd1, ssd2, ssd3, ssd4, ssd5, ssd6, ssd7: out std_logic_vector(0 to ssd_bits -1)
    );
end entity input2ssd;


architecture rtl of input2ssd is

    --------------------------------------------------------------------------------------------
    
    function to_ssd(x : std_logic_vector) return std_logic_vector is
    begin 
        if x = "0110000" then return "0111111" ;
        elsif x = "0110001" then return "0000110";
        elsif x = "0110010" then return "1011011";
        elsif x = "0110011" then return "1001111";
        elsif x = "0110100" then return "1100110";
        elsif x = "0110101" then return "1101101";
        elsif x = "0110110" then return "1111101";
        elsif x = "0110111" then return "0000111";
        elsif x = "0111000" then return "1111111";
        elsif x = "0111001" then return "1101111";
		else return "0000000";
        end if; 
    -- TODO Implementar o resto deste método
    end function;
    
    --------------------------------------------------------------------------------------------
			signal aux1 : std_logic_vector(n_of_bits_ascii downto 0);
	 
	 --------------------------------------------------------------------------------------------
begin
    
--	 ssd0 <= to_ssd(ascii_in(n_of_bits_ascii * n_of_displays - 1 downto (n_of_displays -1) * n_of_bits_ascii - 1 ));
	 
	ssd0 <= to_ssd(ascii_in(55 downto 48));
    ssd1 <= to_ssd(ascii_in(48 downto 41));
    ssd2 <= to_ssd(ascii_in(41 downto 34));
    ssd3 <= to_ssd(ascii_in(34 downto 27));
    ssd4 <= to_ssd(ascii_in(27 downto 20));
    ssd5 <= to_ssd(ascii_in(20 downto 13));
    ssd6 <= to_ssd(ascii_in(13 downto 6));
    ssd7 <= to_ssd(ascii_in(6 downto 0));
    
    
	 
	 
	 
end architecture rtl;