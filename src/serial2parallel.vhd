library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity serial2parallel is
    generic(
        n_bits_msg : natural := 11; 
        n : natural := 8 -- numero de bits uteis, contando com a paridade     
    );
    port (
        serial_in, clk : in std_logic; 
        a,b,c,d,e,f,g, parity_bit : out std_logic    

    );
end entity serial2parallel;


architecture rtl of serial2parallel is
    
    signal pr_bit : std_logic;
    signal aux : std_logic_vector(n - 1 downto 0);


begin
    -- o clock eh o baudrate do transmissor 
    -- o primeiro bit eh start, portanto pode ser descartado
    -- os 7 proximos sao a mesagem 
    -- o penultimi bit eh a paridade
    -- os dois ultimos sao stop, portanto, podem ser descartados. 

    process(clk)
        variable i : integer range n -1 downto 0 := n - 1;
        variable stops : integer range 0 to 2 := 0;
        variable started : boolean := false; 
    begin 
        if rising_edge(clk) then
            -- checa pelo bit de start  
            if started = false and serial_in = '0' then
                started := true;
            end if;

            -- vai incrementando o i e jogando a entrada para o vetor aux
            if started = true then
                if i = 0 then
                    i := n - 1; 
                else
                    -- quando i for maior q n - 2 vai incrementando o stops
                    if i <= n-1 then
                        aux(i) <= serial_in; 
                    else 
                        stops := stops + 1; 
                    end if ;

                    i := i - 1; 
                end if ;

            end if ;
            if stops = 2 then
                stops := 0;
                started := false; 
            end if;    
        end if ;
    end process;

    a <= aux(1);
    b <= aux(2);
    c <= aux(3);
    d <= aux(4);
    e <= aux(5);
    f <= aux(6);
    g <= aux(7);
    parity_bit <= aux(0); 
                
    
end architecture rtl;