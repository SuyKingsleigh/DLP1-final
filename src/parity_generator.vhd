library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parity_generator is
    generic(n : natural := 7);
    port (
        parity_mode : in std_logic;
        data : in std_logic_vector(n-1 downto 0);
        x : out std_logic_vector(n downto 0);
        parity : out std_logic
    );
end entity parity_generator;

architecture rtl of parity_generator is
    signal aux : std_logic_vector(n-1 downto 0);
    signal parity_bit_aux : std_logic;
	 
begin
    
    aux(0) <= data(0) xor data(1);
    xor_loop : for i in 0 to 4 generate
        aux(i+1) <= aux(i) xor data(i + 2);
    end generate xor_loop;
        
    x(n-1 downto 0) <= data;

    -- paridade par
    -- se o numero de 1 for par, entao, adiciona um 0 no menos significativo 
    with aux(n-2) select parity_bit_aux <= 
        '0' when '0', 
        '1' when others;  
    
    -- 0 set p paridade par
    -- 1 set p paraidade impar
    with parity_mode select x(n) <= 
        parity_bit_aux when '0', 
        not parity_bit_aux when others; 

    parity <= aux(n-2);


end architecture rtl;