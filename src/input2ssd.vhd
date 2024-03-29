library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


--------------------------------------------------------------------------------------------------------
-- Essa entidade tem como funo separar os bits da entrada de 7 em 7 (dado que ascii tem 7 bits)---------
-- E converter para SSD 
--------------------------------------------------------------------------------------------------------
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
        if    x = "0110000" then return "0111111"; -- 0
        elsif x = "0110001" then return "0000110"; -- 1
        elsif x = "0110010" then return "1011011"; -- 2
        elsif x = "0110011" then return "1001111"; -- 3
        elsif x = "0110100" then return "1100110"; -- 4
        elsif x = "0110101" then return "1101101"; -- 5
        elsif x = "0110110" then return "1111101"; -- 6
        elsif x = "0110111" then return "0000111"; -- 7
        elsif x = "0111000" then return "1111111"; -- 8
        elsif x = "0111001" then return "1101111"; -- 9

        elsif x = "1000001" then return "1011111"; -- a
        elsif x = "1000010" then return "1111100"; -- b
        elsif x = "1000011" then return "1011000"; -- c
        elsif x = "1000100" then return "1011100"; -- d
        elsif x = "1000101" then return "1001111"; -- e
        elsif x = "1000110" then return "1111001"; -- f
        elsif x = "1001000" then return "1110110"; -- h
        elsif x = "1001001" then return "0000110"; -- i
        elsif x = "1001100" then return "0000110"; -- l 
        elsif x = "1001111" then return "0111111"; -- o
        elsif x = "1010000" then return "1110011"; -- p 
        elsif x = "1010011" then return "1101101"; -- s 
        elsif x = "1010101" then return "0111110"; -- u
		else return "0000000";
        end if; 
    end function;
begin
    ssd <= NOT to_ssd(ascii);
end architecture rtl;