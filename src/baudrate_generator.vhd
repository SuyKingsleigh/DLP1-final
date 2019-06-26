library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity baudrate_generator is
    generic(
            clk_freq : natural := 50000000; 
            b9600 : natural := 5208; --11
            b1 : natural :=  25000000; -- 00
            b4: natural := 12500000; -- 01
            b8 : natural := 6250000 -- 10
        );
    port (
        rst, clk : in std_logic; 
        sel : in std_logic_vector(1 downto 0); 
		  baud : out std_logic
	 );
end entity baudrate_generator;

architecture rtl of baudrate_generator is
    
	 signal clk_tmp : std_logic := '1';
    signal max_sign : integer range 0 to 50000000; 
	 
begin
		
		baud <= clk_tmp;
	
	process(clk)
		variable cnt : integer range 0 to clk_freq; -- maximo 
	begin 
        if rising_edge(clk) then
            if sel = "00" then
                if cnt = b1 then 
                    cnt := 0;
                    clk_tmp <= not clk_tmp;
                else
                    cnt := cnt + 1;
                end if;

            elsif sel = "01" then 
            
                if cnt = b4 then 
                    cnt := 0;
                    clk_tmp <= not clk_tmp;
                else
                    cnt := cnt + 1;
                end if;
            
            elsif sel = "10" then 
                if cnt = b8 then 
                    cnt := 0;
                    clk_tmp <= not clk_tmp;
                else
                    cnt := cnt + 1;
                end if;
            
            
            elsif sel =  "11" then
                if cnt = b9600 then 
                    cnt := 0;
                    clk_tmp <= not clk_tmp;
                else
                    cnt := cnt + 1;
                end if;            
            end if;
        end if;
	end process; 
end architecture rtl;