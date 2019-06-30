library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity transmitter is
    generic(
        n : natural := 8 -- numero de bits ascii + paridade 
      );
    port (
        a : in std_logic_vector(n - 1 downto 0);
        send, rst, clk : in std_logic;
        tx, led : out std_logic
    );
end entity transmitter;

architecture rtl of transmitter is

    type state is (wait_msg, sending);
    signal pr_state, nx_state : state;
    signal msg : std_logic_vector(10 downto 0);

begin

---------------------- CODIGO SEQUENCIAL ---------------------------
    process(clk, rst)
    begin 
        if rst = '1' then
            pr_state <= wait_msg; 
        elsif rising_edge(clk) then 
            pr_state <= nx_state;
        end if;
    end process;
    
    process(pr_state, nx_state, clk, send)
        variable i : integer range 10 downto 0 := 10;
    begin
        case pr_state is
            when wait_msg =>
                tx <= '0';
                led <= '0'; 
                if send = '1' then
                    nx_state <= sending; 
                end if;    
            when sending =>
                msg(10) <= '1'; -- start bit 
                msg(9 downto 2) <= a;  -- parity + msg
                msg(1 downto 0) <= "11"; --2 stop bits
                if rising_edge(clk) then
                    if i = 0 then
                        i := 10;
                        nx_state <= wait_msg;
                    else 
                        tx<=msg(i);
                        i := i - 1;
                    end if ;
                end if;
        end case; 
    end process;
    
end architecture rtl;