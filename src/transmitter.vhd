library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity transmitter is
    generic(
        n : natural := 8; -- numero de bits ascii + paridade 
        n_bits_msg : natural := 11
    );
    port (
        a : in std_logic_vector(n - 1 downto 0);
        rst, clk : in std_logic;
        tx : out std_logic
    );
end entity transmitter;

architecture rtl of transmitter is
    signal msg, msg_aux : std_logic_vector(10 downto 0);
begin
    ------------------- CODIGO CONCORRENTE ----------------------------

    msg_aux(10) <= '1'; -- start bit
    msg_aux(9 downto 2) <= a; -- paridade + mensagem em si
	msg_aux(1 downto 0) <= "11";  -- os dois stop bits
    
    with rst select msg <= 
        "00000000000" when '1', 
        msg_aux when others;

    ------------------- CODIGO SEQUENCIAL ------------------------------

    process(clk)
        variable i : integer range n_bits_msg -1 downto 0 := n_bits_msg - 1;
    begin
        if rising_edge(clk) then
            if i = 0 then
				
                i := n_bits_msg - 1;
            else
                tx <= msg(i);
                i := i - 1; 
            end if ;
            
        end if ;
    end process;
    
    
end architecture rtl;