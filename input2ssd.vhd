library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


---------------------------------------------------------------------------------
-- Essa entidade tem como funo separar os bits da entrada de 7 em 7 (dado que ascii tem 7 bits)
-- E converter para SSD 

entity input2ssd is
    generic(
        n_of_bits_ascii : natural := 7;
        ssd_bits : natural := 7
    );

    port (
        ascii : in std_logic_vector(n_of_bits_ascii -1 downto 0);
        ssd : out std_logic_vector(ssd_bits -1 downto 0 )
    );
end entity input2ssd;


architecture rtl of input2ssd is

    --------------------------------------------------------------------------------------------
    function to_ssd(x : std_logic_vector) return std_logic_vector is
    begin 
        if x = "110000" then return "0111111" ;
        elsif x = "110001" then return "0000110";
        elsif x = "110010" then return "1011011";
        elsif x = "110011" then return "1001111";
        elsif x = "110100" then return "1100110";
        elsif x = "110101" then return "1101101";
        elsif x = "110110" then return "1111101";
        elsif x = "110111" then return "0000111";
        elsif x = "111000" then return "1111111";
        elsif x = "111001" then return "1101111";
		else return "000000";
        end if; 
    -- TODO Implementar o resto deste método
    end function;
    

begin
    ssd <= to_ssd(ascii);
    
end architecture rtl;