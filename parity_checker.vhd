library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parity_checker is
    generic(n : natural := 8);
    port (
        data : in std_logic_vector(n-1 downto 0);
        x : out std_logic_vector(n downto 0);
        parity : out std_logic
    );
end entity parity_checker;

architecture rtl of parity_checker is
    signal aux : std_logic_vector(n-1 downto 0);
	 
begin
    
    aux(0) <= data(0) xor data(1);
    xor_loop : for i in 0 to 5 generate
        aux(i+1) <= aux(i) xor data(i + 2);
    end generate xor_loop;
        
    x(n downto 1) <= data;

    -- paridade par
    -- se o numero de 1 for par, entao, adiciona um 0 no menos significativo 
    with aux(n-2) select x(0) <= 
        '0' when '0', 
        '1' when others;  

    parity <= aux(n-2);


end architecture rtl;