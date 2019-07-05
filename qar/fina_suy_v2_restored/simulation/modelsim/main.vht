LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_tst IS
END main_vhd_tst;
ARCHITECTURE main_arch OF main_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL baudrate : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL d0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL d7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL e : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL g : STD_LOGIC;
-- valores iniciais de clock e rst
SIGNAL main_clk : STD_LOGIC:= '0';
SIGNAL main_rst : STD_LOGIC;

SIGNAL paridade : STD_LOGIC;
SIGNAL parity_mode : STD_LOGIC;
SIGNAL parity_mode_out : STD_LOGIC;
SIGNAL save : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL tx : STD_LOGIC;


COMPONENT main
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	baudrate : OUT STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	d0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d6 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	d7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	e : IN STD_LOGIC;
	f : IN STD_LOGIC;
	g : IN STD_LOGIC;
	main_clk : IN STD_LOGIC;
	main_rst : IN STD_LOGIC;
	paridade : OUT STD_LOGIC;
	parity_mode : IN STD_LOGIC;
	parity_mode_out : OUT STD_LOGIC;
	save : IN STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	tx : OUT STD_LOGIC
	);
END COMPONENT;

-- constantes 
	constant tmain_clk :time := 1 ns; 
	constant trst : time := 100 ps;
	constant tsave : time := 25 ns; 
	constant tparity_mode : time := 50 ns;
	constant tinput : time := 30 ns;

BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	baudrate => baudrate,
	c => c,
	d => d,
	  m  e => e,
	f => f,
	g => g,
	d0 => d0,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	d5 => d5,
	d6 => d6,
	d7 => d7,
	main_clk => main_clk,
	main_rst => main_rst,
	paridade => paridade,
	parity_mode => parity_mode,
	parity_mode_out => parity_mode_out,
	save => save,
	sel => sel,
	tx => tx
	);
	-- codigo concorrente teste 
	main_clk <= not main_clk after tmain_clk;
	main_rst <= '1', '0' after trst; 
	parity_mode <= '0', '1' after tparity_mode, '0' after 100 ns;
	save <= not save after tsave; 

	sel <= "11"; 
	a <= '0'; 
	b <= '1';
	c <= '1';
	d <= '0';	
	e <= '0';
	f <= '0';
	g <= '0', '1' after tinput;

                                   
END main_arch;
