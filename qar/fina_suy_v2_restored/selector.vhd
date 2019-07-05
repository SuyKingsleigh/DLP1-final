library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity selector is
    generic(n : natural := 7);
    port (
        save, rst : in std_logic; 
        data : in std_logic_vector(n - 1 downto 0);
        d0, d1, d2, d3, d4, d5, d6, d7 : out std_logic_vector(n - 1 downto 0)
    );
end entity selector;

architecture rtl of selector is
    type state is(d0s, d1s, d2s, d3s, d4s, d5s, d6s, d7s);
    signal pr_state, nx_state : state; 
begin

    -- inicia no display 0
    -- para cada save troca de display 
    process(save, rst)
    begin 
        if rst = '1' then
            pr_state <= d0s;
        elsif rising_edge(save) then 
            pr_state <= nx_state;
        end if ;
    end process;

    process(pr_state, nx_state)
    begin
			
        case pr_state is
            when d0s =>
                d0 <= data; 
                nx_state <= d1s;
        
            when d1s  =>
                d1 <= data; 
                nx_state <= d2s;

            when d2s =>
                d2 <= data;
                nx_state <= d3s;

            when d3s =>
                d3 <= data;
                nx_state <= d4s; 
            
            when d4s =>
                d4 <= data; 
                nx_state <= d5s;

            when d5s =>
                d5 <= data; 
                nx_state <= d6s;

            when d6s =>
                d6 <= data; 
                nx_state <= d7s;
            
            when d7s =>
                d6 <= data; 
                nx_state <= d0s;
                   
        end case;
    end process;
    
    
end architecture rtl;