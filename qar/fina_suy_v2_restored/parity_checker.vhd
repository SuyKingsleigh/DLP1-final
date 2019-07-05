library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parity_checker is
    generic(n : natural := 8);
    port (
        parity_mode : in std_logic; 
        data : in std_logic_vector(n-1 downto 0);
        x : out std_logic
    );
end entity parity_checker;

architecture rtl of parity_checker is
    signal aux : std_logic_vector(n-1 downto 0);	 
begin
    
    aux(0) <= data(0) xor data(1);
    xor_loop : for i in 0 to n-3 generate
        aux(i+1) <= aux(i) xor data(i + 2);
    end generate xor_loop;

    x <= aux(n-2) xnor parity_mode;

end architecture rtl;