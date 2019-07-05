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

architecture arch of transmitter is

    type state is(wait_msg,start_bit,parity, b0, b1, b2, b3, b4, b5, b6, stop0, stop1);
    signal pr_state, nx_state : state; 

begin

    process(clk, rst)
	 begin
        if rst='1' then
            pr_state <= wait_msg; 
        elsif rising_edge(clk) then 
            pr_state <= nx_state; 
        end if;
    end process;

    process(pr_state, nx_state, clk, send)
    begin 
            led <= '1';

            case pr_state is 
                -- enquanto estiver em idle
                -- out tx eh 1 
                when wait_msg =>
                    tx <= '1';
                    led <= '0';
                    if send = '1' then
                        nx_state <= start_bit;
                    else 
                        nx_state <= wait_msg;
                    end if ;
                -- start bit eh 0
                when start_bit =>
                    tx <= '0';
                    nx_state <= b0;
                -- depois do start bit vem o payload 
                when b0 =>
                    tx <= a(7);
                    nx_state <= b1;
                when b1 =>
                    tx <= a(6);
                    nx_state <= b2;
                when b2 =>
                    tx <= a(5);
                    nx_state <= b3;
                when b3 =>
                    tx <= a(4);
                    nx_state <= b4;
               when b4 =>
                    tx <= a(3);
                    nx_state <= b5;
                when b5 =>
                    tx <= a(2);
                    nx_state <= b6;
                when b6 =>
                    tx <= a(1);
                    nx_state <= parity;
                -- depois do payload vem a paridade 
                when parity =>
                    tx <= a(0);
                    nx_state <= stop0;
					 
					 -- os dois stop bits sao de 0
                when stop0 =>
                    tx <= '0'; 
                    nx_state <= stop1;
                
                when stop1 =>
                    tx <= '0'; 
                    nx_state <= wait_msg;


        end case; 

    end process;


end arch ; -- arch