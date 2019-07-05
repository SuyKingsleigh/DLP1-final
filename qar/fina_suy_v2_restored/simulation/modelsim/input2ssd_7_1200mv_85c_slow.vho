-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "07/05/2019 17:37:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : IN std_logic;
	f : IN std_logic;
	g : IN std_logic;
	save_in : IN std_logic;
	main_rst_IN : IN std_logic;
	main_clk : IN std_logic;
	parity_mode : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	tx : OUT std_logic;
	parity_mode_out : OUT std_logic;
	paridade : OUT std_logic;
	baudrate : OUT std_logic;
	led : OUT std_logic;
	led_clk : OUT std_logic
	);
END main;

-- Design Ports Information
-- tx	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parity_mode_out	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- paridade	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- baudrate	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_clk	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parity_mode	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_rst_IN	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- save_in	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_save_in : std_logic;
SIGNAL ww_main_rst_IN : std_logic;
SIGNAL ww_main_clk : std_logic;
SIGNAL ww_parity_mode : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_tx : std_logic;
SIGNAL ww_parity_mode_out : std_logic;
SIGNAL ww_paridade : std_logic;
SIGNAL ww_baudrate : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_led_clk : std_logic;
SIGNAL \main_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gerador_baudrate|clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gerador_baudrate|cnt[0]~26_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[2]~32_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[8]~44_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[12]~52_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[16]~60_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[19]~66_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[23]~75\ : std_logic;
SIGNAL \gerador_baudrate|cnt[24]~76_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[24]~77\ : std_logic;
SIGNAL \gerador_baudrate|cnt[25]~78_combout\ : std_logic;
SIGNAL \transmissor|Selector0~4_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal1~0_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal1~1_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal5~0_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal1~4_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal5~1_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal5~2_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal5~3_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal7~0_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal7~1_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal7~2_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal7~3_combout\ : std_logic;
SIGNAL \gerador_baudrate|clk_tmp~0_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal1~7_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal3~1_combout\ : std_logic;
SIGNAL \main_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \gerador_baudrate|clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \parity_mode_out~output_o\ : std_logic;
SIGNAL \paridade~output_o\ : std_logic;
SIGNAL \baudrate~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \led_clk~output_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \paralelo_serial|serial[5]~feeder_combout\ : std_logic;
SIGNAL \main_rst_IN~input_o\ : std_logic;
SIGNAL \save_in~input_o\ : std_logic;
SIGNAL \transmissor|pr_state.b3~feeder_combout\ : std_logic;
SIGNAL \transmissor|pr_state.b3~q\ : std_logic;
SIGNAL \transmissor|pr_state.b4~q\ : std_logic;
SIGNAL \transmissor|pr_state.b5~q\ : std_logic;
SIGNAL \transmissor|pr_state.b6~feeder_combout\ : std_logic;
SIGNAL \transmissor|pr_state.b6~q\ : std_logic;
SIGNAL \transmissor|pr_state.parity~q\ : std_logic;
SIGNAL \transmissor|pr_state.stop0~q\ : std_logic;
SIGNAL \transmissor|pr_state.stop1~q\ : std_logic;
SIGNAL \transmissor|Selector1~0_combout\ : std_logic;
SIGNAL \transmissor|pr_state.wait_msg~q\ : std_logic;
SIGNAL \transmissor|nx_state.start_bit~0_combout\ : std_logic;
SIGNAL \transmissor|pr_state.start_bit~q\ : std_logic;
SIGNAL \transmissor|pr_state.b0~feeder_combout\ : std_logic;
SIGNAL \transmissor|pr_state.b0~q\ : std_logic;
SIGNAL \transmissor|pr_state.b1~feeder_combout\ : std_logic;
SIGNAL \transmissor|pr_state.b1~q\ : std_logic;
SIGNAL \transmissor|pr_state.b2~q\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \paralelo_serial|serial[4]~feeder_combout\ : std_logic;
SIGNAL \transmissor|Selector0~3_combout\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \transmissor|Selector0~2_combout\ : std_logic;
SIGNAL \g~input_o\ : std_logic;
SIGNAL \f~input_o\ : std_logic;
SIGNAL \transmissor|Selector0~1_combout\ : std_logic;
SIGNAL \transmissor|Selector0~5_combout\ : std_logic;
SIGNAL \parity_mode~input_o\ : std_logic;
SIGNAL \transmissor|Selector0~0_combout\ : std_logic;
SIGNAL \transmissor|Selector0~6_combout\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \paralelo_serial|serial[3]~feeder_combout\ : std_logic;
SIGNAL \parityGenerator|parity~0_combout\ : std_logic;
SIGNAL \parityGenerator|parity~1_combout\ : std_logic;
SIGNAL \main_clk~input_o\ : std_logic;
SIGNAL \gerador_baudrate|cnt[0]~27\ : std_logic;
SIGNAL \gerador_baudrate|cnt[1]~30_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[18]~65\ : std_logic;
SIGNAL \gerador_baudrate|cnt[19]~67\ : std_logic;
SIGNAL \gerador_baudrate|cnt[20]~68_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[20]~69\ : std_logic;
SIGNAL \gerador_baudrate|cnt[21]~70_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[21]~71\ : std_logic;
SIGNAL \gerador_baudrate|cnt[22]~72_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[22]~73\ : std_logic;
SIGNAL \gerador_baudrate|cnt[23]~74_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal1~3_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[10]~48_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal1~8_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \gerador_baudrate|cnt[3]~28_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[3]~29_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[1]~31\ : std_logic;
SIGNAL \gerador_baudrate|cnt[2]~33\ : std_logic;
SIGNAL \gerador_baudrate|cnt[3]~35\ : std_logic;
SIGNAL \gerador_baudrate|cnt[4]~36_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[4]~37\ : std_logic;
SIGNAL \gerador_baudrate|cnt[5]~38_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[5]~39\ : std_logic;
SIGNAL \gerador_baudrate|cnt[6]~40_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[6]~41\ : std_logic;
SIGNAL \gerador_baudrate|cnt[7]~42_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[7]~43\ : std_logic;
SIGNAL \gerador_baudrate|cnt[8]~45\ : std_logic;
SIGNAL \gerador_baudrate|cnt[9]~46_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[9]~47\ : std_logic;
SIGNAL \gerador_baudrate|cnt[10]~49\ : std_logic;
SIGNAL \gerador_baudrate|cnt[11]~50_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[11]~51\ : std_logic;
SIGNAL \gerador_baudrate|cnt[12]~53\ : std_logic;
SIGNAL \gerador_baudrate|cnt[13]~54_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[13]~55\ : std_logic;
SIGNAL \gerador_baudrate|cnt[14]~56_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[14]~57\ : std_logic;
SIGNAL \gerador_baudrate|cnt[15]~58_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[15]~59\ : std_logic;
SIGNAL \gerador_baudrate|cnt[16]~61\ : std_logic;
SIGNAL \gerador_baudrate|cnt[17]~62_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[17]~63\ : std_logic;
SIGNAL \gerador_baudrate|cnt[18]~64_combout\ : std_logic;
SIGNAL \gerador_baudrate|cnt[3]~34_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal1~2_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal1~5_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal1~6_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal3~0_combout\ : std_logic;
SIGNAL \gerador_baudrate|Equal3~2_combout\ : std_logic;
SIGNAL \gerador_baudrate|clk_tmp~1_combout\ : std_logic;
SIGNAL \gerador_baudrate|clk_tmp~2_combout\ : std_logic;
SIGNAL \gerador_baudrate|clk_tmp~3_combout\ : std_logic;
SIGNAL \gerador_baudrate|clk_tmp~q\ : std_logic;
SIGNAL \paralelo_serial|serial\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gerador_baudrate|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_save_in~input_o\ : std_logic;
SIGNAL \gerador_baudrate|ALT_INV_clk_tmp~q\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_e <= e;
ww_f <= f;
ww_g <= g;
ww_save_in <= save_in;
ww_main_rst_IN <= main_rst_IN;
ww_main_clk <= main_clk;
ww_parity_mode <= parity_mode;
ww_sel <= sel;
tx <= ww_tx;
parity_mode_out <= ww_parity_mode_out;
paridade <= ww_paridade;
baudrate <= ww_baudrate;
led <= ww_led;
led_clk <= ww_led_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\main_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \main_clk~input_o\);

\gerador_baudrate|clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gerador_baudrate|clk_tmp~q\);
\gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\ <= NOT \gerador_baudrate|clk_tmp~clkctrl_outclk\;
\ALT_INV_save_in~input_o\ <= NOT \save_in~input_o\;
\gerador_baudrate|ALT_INV_clk_tmp~q\ <= NOT \gerador_baudrate|clk_tmp~q\;

-- Location: FF_X60_Y4_N7
\gerador_baudrate|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[0]~26_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(0));

-- Location: FF_X60_Y4_N11
\gerador_baudrate|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[2]~32_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(2));

-- Location: FF_X60_Y4_N31
\gerador_baudrate|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[12]~52_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(12));

-- Location: FF_X60_Y4_N23
\gerador_baudrate|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[8]~44_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(8));

-- Location: FF_X60_Y3_N25
\gerador_baudrate|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[25]~78_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(25));

-- Location: FF_X60_Y3_N13
\gerador_baudrate|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[19]~66_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(19));

-- Location: FF_X60_Y3_N23
\gerador_baudrate|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[24]~76_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(24));

-- Location: FF_X60_Y3_N7
\gerador_baudrate|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[16]~60_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(16));

-- Location: LCCOMB_X60_Y4_N6
\gerador_baudrate|cnt[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[0]~26_combout\ = \gerador_baudrate|cnt\(0) $ (VCC)
-- \gerador_baudrate|cnt[0]~27\ = CARRY(\gerador_baudrate|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(0),
	datad => VCC,
	combout => \gerador_baudrate|cnt[0]~26_combout\,
	cout => \gerador_baudrate|cnt[0]~27\);

-- Location: LCCOMB_X60_Y4_N10
\gerador_baudrate|cnt[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[2]~32_combout\ = (\gerador_baudrate|cnt\(2) & (\gerador_baudrate|cnt[1]~31\ $ (GND))) # (!\gerador_baudrate|cnt\(2) & (!\gerador_baudrate|cnt[1]~31\ & VCC))
-- \gerador_baudrate|cnt[2]~33\ = CARRY((\gerador_baudrate|cnt\(2) & !\gerador_baudrate|cnt[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(2),
	datad => VCC,
	cin => \gerador_baudrate|cnt[1]~31\,
	combout => \gerador_baudrate|cnt[2]~32_combout\,
	cout => \gerador_baudrate|cnt[2]~33\);

-- Location: LCCOMB_X60_Y4_N22
\gerador_baudrate|cnt[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[8]~44_combout\ = (\gerador_baudrate|cnt\(8) & (\gerador_baudrate|cnt[7]~43\ $ (GND))) # (!\gerador_baudrate|cnt\(8) & (!\gerador_baudrate|cnt[7]~43\ & VCC))
-- \gerador_baudrate|cnt[8]~45\ = CARRY((\gerador_baudrate|cnt\(8) & !\gerador_baudrate|cnt[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(8),
	datad => VCC,
	cin => \gerador_baudrate|cnt[7]~43\,
	combout => \gerador_baudrate|cnt[8]~44_combout\,
	cout => \gerador_baudrate|cnt[8]~45\);

-- Location: LCCOMB_X60_Y4_N30
\gerador_baudrate|cnt[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[12]~52_combout\ = (\gerador_baudrate|cnt\(12) & (\gerador_baudrate|cnt[11]~51\ $ (GND))) # (!\gerador_baudrate|cnt\(12) & (!\gerador_baudrate|cnt[11]~51\ & VCC))
-- \gerador_baudrate|cnt[12]~53\ = CARRY((\gerador_baudrate|cnt\(12) & !\gerador_baudrate|cnt[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(12),
	datad => VCC,
	cin => \gerador_baudrate|cnt[11]~51\,
	combout => \gerador_baudrate|cnt[12]~52_combout\,
	cout => \gerador_baudrate|cnt[12]~53\);

-- Location: LCCOMB_X60_Y3_N6
\gerador_baudrate|cnt[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[16]~60_combout\ = (\gerador_baudrate|cnt\(16) & (\gerador_baudrate|cnt[15]~59\ $ (GND))) # (!\gerador_baudrate|cnt\(16) & (!\gerador_baudrate|cnt[15]~59\ & VCC))
-- \gerador_baudrate|cnt[16]~61\ = CARRY((\gerador_baudrate|cnt\(16) & !\gerador_baudrate|cnt[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(16),
	datad => VCC,
	cin => \gerador_baudrate|cnt[15]~59\,
	combout => \gerador_baudrate|cnt[16]~60_combout\,
	cout => \gerador_baudrate|cnt[16]~61\);

-- Location: LCCOMB_X60_Y3_N12
\gerador_baudrate|cnt[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[19]~66_combout\ = (\gerador_baudrate|cnt\(19) & (!\gerador_baudrate|cnt[18]~65\)) # (!\gerador_baudrate|cnt\(19) & ((\gerador_baudrate|cnt[18]~65\) # (GND)))
-- \gerador_baudrate|cnt[19]~67\ = CARRY((!\gerador_baudrate|cnt[18]~65\) # (!\gerador_baudrate|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(19),
	datad => VCC,
	cin => \gerador_baudrate|cnt[18]~65\,
	combout => \gerador_baudrate|cnt[19]~66_combout\,
	cout => \gerador_baudrate|cnt[19]~67\);

-- Location: LCCOMB_X60_Y3_N20
\gerador_baudrate|cnt[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[23]~74_combout\ = (\gerador_baudrate|cnt\(23) & (!\gerador_baudrate|cnt[22]~73\)) # (!\gerador_baudrate|cnt\(23) & ((\gerador_baudrate|cnt[22]~73\) # (GND)))
-- \gerador_baudrate|cnt[23]~75\ = CARRY((!\gerador_baudrate|cnt[22]~73\) # (!\gerador_baudrate|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(23),
	datad => VCC,
	cin => \gerador_baudrate|cnt[22]~73\,
	combout => \gerador_baudrate|cnt[23]~74_combout\,
	cout => \gerador_baudrate|cnt[23]~75\);

-- Location: LCCOMB_X60_Y3_N22
\gerador_baudrate|cnt[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[24]~76_combout\ = (\gerador_baudrate|cnt\(24) & (\gerador_baudrate|cnt[23]~75\ $ (GND))) # (!\gerador_baudrate|cnt\(24) & (!\gerador_baudrate|cnt[23]~75\ & VCC))
-- \gerador_baudrate|cnt[24]~77\ = CARRY((\gerador_baudrate|cnt\(24) & !\gerador_baudrate|cnt[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(24),
	datad => VCC,
	cin => \gerador_baudrate|cnt[23]~75\,
	combout => \gerador_baudrate|cnt[24]~76_combout\,
	cout => \gerador_baudrate|cnt[24]~77\);

-- Location: LCCOMB_X60_Y3_N24
\gerador_baudrate|cnt[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[25]~78_combout\ = \gerador_baudrate|cnt[24]~77\ $ (\gerador_baudrate|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gerador_baudrate|cnt\(25),
	cin => \gerador_baudrate|cnt[24]~77\,
	combout => \gerador_baudrate|cnt[25]~78_combout\);

-- Location: LCCOMB_X114_Y17_N10
\transmissor|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|Selector0~4_combout\ = ((\transmissor|pr_state.stop0~q\) # ((\transmissor|pr_state.b0~q\ & \paralelo_serial|serial\(6)))) # (!\transmissor|pr_state.wait_msg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmissor|pr_state.b0~q\,
	datab => \transmissor|pr_state.wait_msg~q\,
	datac => \transmissor|pr_state.stop0~q\,
	datad => \paralelo_serial|serial\(6),
	combout => \transmissor|Selector0~4_combout\);

-- Location: LCCOMB_X60_Y4_N0
\gerador_baudrate|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal1~0_combout\ = (!\gerador_baudrate|cnt\(0) & (!\gerador_baudrate|cnt\(7) & (!\gerador_baudrate|cnt\(1) & !\gerador_baudrate|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(0),
	datab => \gerador_baudrate|cnt\(7),
	datac => \gerador_baudrate|cnt\(1),
	datad => \gerador_baudrate|cnt\(2),
	combout => \gerador_baudrate|Equal1~0_combout\);

-- Location: LCCOMB_X59_Y4_N10
\gerador_baudrate|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal1~1_combout\ = (\gerador_baudrate|cnt\(12) & (!\gerador_baudrate|cnt\(25) & (\gerador_baudrate|Equal1~0_combout\ & !\gerador_baudrate|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(12),
	datab => \gerador_baudrate|cnt\(25),
	datac => \gerador_baudrate|Equal1~0_combout\,
	datad => \gerador_baudrate|cnt\(8),
	combout => \gerador_baudrate|Equal1~1_combout\);

-- Location: LCCOMB_X59_Y4_N18
\gerador_baudrate|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal5~0_combout\ = (!\gerador_baudrate|cnt\(21) & (!\gerador_baudrate|cnt\(13) & (!\gerador_baudrate|cnt\(24) & \gerador_baudrate|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(21),
	datab => \gerador_baudrate|cnt\(13),
	datac => \gerador_baudrate|cnt\(24),
	datad => \gerador_baudrate|cnt\(10),
	combout => \gerador_baudrate|Equal5~0_combout\);

-- Location: LCCOMB_X60_Y3_N26
\gerador_baudrate|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal1~4_combout\ = (\gerador_baudrate|cnt\(16) & (\gerador_baudrate|cnt\(14) & \gerador_baudrate|cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(16),
	datab => \gerador_baudrate|cnt\(14),
	datad => \gerador_baudrate|cnt\(22),
	combout => \gerador_baudrate|Equal1~4_combout\);

-- Location: LCCOMB_X58_Y4_N8
\gerador_baudrate|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal5~1_combout\ = (\gerador_baudrate|Equal1~4_combout\ & (\gerador_baudrate|cnt\(17) & (!\gerador_baudrate|cnt\(6) & \gerador_baudrate|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal1~4_combout\,
	datab => \gerador_baudrate|cnt\(17),
	datac => \gerador_baudrate|cnt\(6),
	datad => \gerador_baudrate|cnt\(9),
	combout => \gerador_baudrate|Equal5~1_combout\);

-- Location: LCCOMB_X59_Y4_N12
\gerador_baudrate|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal5~2_combout\ = (\gerador_baudrate|Equal5~1_combout\ & (\gerador_baudrate|Equal5~0_combout\ & (\gerador_baudrate|Equal1~3_combout\ & \gerador_baudrate|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal5~1_combout\,
	datab => \gerador_baudrate|Equal5~0_combout\,
	datac => \gerador_baudrate|Equal1~3_combout\,
	datad => \gerador_baudrate|cnt\(4),
	combout => \gerador_baudrate|Equal5~2_combout\);

-- Location: LCCOMB_X59_Y4_N14
\gerador_baudrate|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal5~3_combout\ = (\gerador_baudrate|Equal5~2_combout\ & (\gerador_baudrate|Equal1~2_combout\ & (\gerador_baudrate|cnt\(20) & \gerador_baudrate|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal5~2_combout\,
	datab => \gerador_baudrate|Equal1~2_combout\,
	datac => \gerador_baudrate|cnt\(20),
	datad => \gerador_baudrate|Equal1~1_combout\,
	combout => \gerador_baudrate|Equal5~3_combout\);

-- Location: LCCOMB_X59_Y4_N28
\gerador_baudrate|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal7~0_combout\ = (\gerador_baudrate|Equal1~1_combout\ & (\gerador_baudrate|Equal5~0_combout\ & (\gerador_baudrate|Equal1~3_combout\ & \gerador_baudrate|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal1~1_combout\,
	datab => \gerador_baudrate|Equal5~0_combout\,
	datac => \gerador_baudrate|Equal1~3_combout\,
	datad => \gerador_baudrate|cnt\(4),
	combout => \gerador_baudrate|Equal7~0_combout\);

-- Location: LCCOMB_X58_Y4_N18
\gerador_baudrate|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal7~1_combout\ = (\gerador_baudrate|cnt\(6) & (!\gerador_baudrate|cnt\(11) & (!\gerador_baudrate|cnt\(17) & !\gerador_baudrate|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(6),
	datab => \gerador_baudrate|cnt\(11),
	datac => \gerador_baudrate|cnt\(17),
	datad => \gerador_baudrate|cnt\(9),
	combout => \gerador_baudrate|Equal7~1_combout\);

-- Location: LCCOMB_X59_Y4_N0
\gerador_baudrate|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal7~2_combout\ = (!\gerador_baudrate|cnt\(19) & (!\gerador_baudrate|cnt\(20) & (!\gerador_baudrate|cnt\(18) & \gerador_baudrate|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(19),
	datab => \gerador_baudrate|cnt\(20),
	datac => \gerador_baudrate|cnt\(18),
	datad => \gerador_baudrate|Equal7~1_combout\,
	combout => \gerador_baudrate|Equal7~2_combout\);

-- Location: LCCOMB_X59_Y4_N26
\gerador_baudrate|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal7~3_combout\ = (\gerador_baudrate|Equal3~0_combout\ & (\gerador_baudrate|Equal7~0_combout\ & (\gerador_baudrate|cnt\(3) & \gerador_baudrate|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal3~0_combout\,
	datab => \gerador_baudrate|Equal7~0_combout\,
	datac => \gerador_baudrate|cnt\(3),
	datad => \gerador_baudrate|Equal7~2_combout\,
	combout => \gerador_baudrate|Equal7~3_combout\);

-- Location: LCCOMB_X59_Y4_N22
\gerador_baudrate|clk_tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|clk_tmp~0_combout\ = (\sel[0]~input_o\ & ((\gerador_baudrate|Equal7~3_combout\))) # (!\sel[0]~input_o\ & (\gerador_baudrate|Equal5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|Equal5~3_combout\,
	datac => \gerador_baudrate|Equal7~3_combout\,
	datad => \sel[0]~input_o\,
	combout => \gerador_baudrate|clk_tmp~0_combout\);

-- Location: LCCOMB_X58_Y4_N20
\gerador_baudrate|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal1~7_combout\ = (\gerador_baudrate|Equal1~4_combout\ & (!\gerador_baudrate|cnt\(17) & (\gerador_baudrate|cnt\(6) & \gerador_baudrate|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal1~4_combout\,
	datab => \gerador_baudrate|cnt\(17),
	datac => \gerador_baudrate|cnt\(6),
	datad => \gerador_baudrate|cnt\(24),
	combout => \gerador_baudrate|Equal1~7_combout\);

-- Location: LCCOMB_X58_Y4_N14
\gerador_baudrate|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal3~1_combout\ = (\gerador_baudrate|cnt\(10) & (\gerador_baudrate|cnt\(17) & (!\gerador_baudrate|cnt\(6) & !\gerador_baudrate|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(10),
	datab => \gerador_baudrate|cnt\(17),
	datac => \gerador_baudrate|cnt\(6),
	datad => \gerador_baudrate|cnt\(24),
	combout => \gerador_baudrate|Equal3~1_combout\);

-- Location: CLKCTRL_G4
\main_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \main_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \main_clk~inputclkctrl_outclk\);

-- Location: CLKCTRL_G18
\gerador_baudrate|clk_tmp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gerador_baudrate|clk_tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gerador_baudrate|clk_tmp~clkctrl_outclk\);

-- Location: IOOBUF_X60_Y0_N23
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmissor|Selector0~6_combout\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\parity_mode_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parity_mode~input_o\,
	devoe => ww_devoe,
	o => \parity_mode_out~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\paridade~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \parityGenerator|parity~1_combout\,
	devoe => ww_devoe,
	o => \paridade~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\baudrate~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gerador_baudrate|ALT_INV_clk_tmp~q\,
	devoe => ww_devoe,
	o => \baudrate~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmissor|pr_state.wait_msg~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\led_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gerador_baudrate|ALT_INV_clk_tmp~q\,
	devoe => ww_devoe,
	o => \led_clk~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X114_Y17_N24
\paralelo_serial|serial[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \paralelo_serial|serial[5]~feeder_combout\ = \b~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b~input_o\,
	combout => \paralelo_serial|serial[5]~feeder_combout\);

-- Location: IOIBUF_X115_Y40_N8
\main_rst_IN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_main_rst_IN,
	o => \main_rst_IN~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\save_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_save_in,
	o => \save_in~input_o\);

-- Location: FF_X114_Y17_N25
\paralelo_serial|serial[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	d => \paralelo_serial|serial[5]~feeder_combout\,
	clrn => \main_rst_IN~input_o\,
	ena => \ALT_INV_save_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \paralelo_serial|serial\(5));

-- Location: LCCOMB_X114_Y17_N14
\transmissor|pr_state.b3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|pr_state.b3~feeder_combout\ = \transmissor|pr_state.b2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \transmissor|pr_state.b2~q\,
	combout => \transmissor|pr_state.b3~feeder_combout\);

-- Location: FF_X114_Y17_N15
\transmissor|pr_state.b3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	d => \transmissor|pr_state.b3~feeder_combout\,
	clrn => \main_rst_IN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.b3~q\);

-- Location: FF_X114_Y17_N5
\transmissor|pr_state.b4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \transmissor|pr_state.b3~q\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.b4~q\);

-- Location: FF_X114_Y17_N1
\transmissor|pr_state.b5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \transmissor|pr_state.b4~q\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.b5~q\);

-- Location: LCCOMB_X114_Y17_N30
\transmissor|pr_state.b6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|pr_state.b6~feeder_combout\ = \transmissor|pr_state.b5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \transmissor|pr_state.b5~q\,
	combout => \transmissor|pr_state.b6~feeder_combout\);

-- Location: FF_X114_Y17_N31
\transmissor|pr_state.b6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	d => \transmissor|pr_state.b6~feeder_combout\,
	clrn => \main_rst_IN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.b6~q\);

-- Location: FF_X114_Y17_N9
\transmissor|pr_state.parity\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \transmissor|pr_state.b6~q\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.parity~q\);

-- Location: FF_X114_Y17_N11
\transmissor|pr_state.stop0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \transmissor|pr_state.parity~q\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.stop0~q\);

-- Location: FF_X111_Y17_N1
\transmissor|pr_state.stop1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \transmissor|pr_state.stop0~q\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.stop1~q\);

-- Location: LCCOMB_X111_Y17_N20
\transmissor|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|Selector1~0_combout\ = (!\transmissor|pr_state.stop1~q\ & ((\transmissor|pr_state.wait_msg~q\) # (!\save_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save_in~input_o\,
	datac => \transmissor|pr_state.wait_msg~q\,
	datad => \transmissor|pr_state.stop1~q\,
	combout => \transmissor|Selector1~0_combout\);

-- Location: FF_X111_Y17_N21
\transmissor|pr_state.wait_msg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	d => \transmissor|Selector1~0_combout\,
	clrn => \main_rst_IN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.wait_msg~q\);

-- Location: LCCOMB_X111_Y17_N6
\transmissor|nx_state.start_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|nx_state.start_bit~0_combout\ = (!\save_in~input_o\ & !\transmissor|pr_state.wait_msg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save_in~input_o\,
	datad => \transmissor|pr_state.wait_msg~q\,
	combout => \transmissor|nx_state.start_bit~0_combout\);

-- Location: FF_X111_Y17_N7
\transmissor|pr_state.start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	d => \transmissor|nx_state.start_bit~0_combout\,
	clrn => \main_rst_IN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.start_bit~q\);

-- Location: LCCOMB_X111_Y17_N2
\transmissor|pr_state.b0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|pr_state.b0~feeder_combout\ = \transmissor|pr_state.start_bit~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \transmissor|pr_state.start_bit~q\,
	combout => \transmissor|pr_state.b0~feeder_combout\);

-- Location: FF_X111_Y17_N3
\transmissor|pr_state.b0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	d => \transmissor|pr_state.b0~feeder_combout\,
	clrn => \main_rst_IN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.b0~q\);

-- Location: LCCOMB_X114_Y17_N26
\transmissor|pr_state.b1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|pr_state.b1~feeder_combout\ = \transmissor|pr_state.b0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \transmissor|pr_state.b0~q\,
	combout => \transmissor|pr_state.b1~feeder_combout\);

-- Location: FF_X114_Y17_N27
\transmissor|pr_state.b1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	d => \transmissor|pr_state.b1~feeder_combout\,
	clrn => \main_rst_IN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.b1~q\);

-- Location: FF_X114_Y17_N19
\transmissor|pr_state.b2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \transmissor|pr_state.b1~q\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmissor|pr_state.b2~q\);

-- Location: IOIBUF_X115_Y15_N8
\c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LCCOMB_X114_Y17_N12
\paralelo_serial|serial[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \paralelo_serial|serial[4]~feeder_combout\ = \c~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c~input_o\,
	combout => \paralelo_serial|serial[4]~feeder_combout\);

-- Location: FF_X114_Y17_N13
\paralelo_serial|serial[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	d => \paralelo_serial|serial[4]~feeder_combout\,
	clrn => \main_rst_IN~input_o\,
	ena => \ALT_INV_save_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \paralelo_serial|serial\(4));

-- Location: LCCOMB_X114_Y17_N18
\transmissor|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|Selector0~3_combout\ = (\transmissor|pr_state.b1~q\ & ((\paralelo_serial|serial\(5)) # ((\transmissor|pr_state.b2~q\ & \paralelo_serial|serial\(4))))) # (!\transmissor|pr_state.b1~q\ & (((\transmissor|pr_state.b2~q\ & 
-- \paralelo_serial|serial\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmissor|pr_state.b1~q\,
	datab => \paralelo_serial|serial\(5),
	datac => \transmissor|pr_state.b2~q\,
	datad => \paralelo_serial|serial\(4),
	combout => \transmissor|Selector0~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\e~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: FF_X114_Y17_N23
\paralelo_serial|serial[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \e~input_o\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	ena => \ALT_INV_save_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \paralelo_serial|serial\(2));

-- Location: LCCOMB_X114_Y17_N4
\transmissor|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|Selector0~2_combout\ = (\paralelo_serial|serial\(3) & ((\transmissor|pr_state.b3~q\) # ((\transmissor|pr_state.b4~q\ & \paralelo_serial|serial\(2))))) # (!\paralelo_serial|serial\(3) & (((\transmissor|pr_state.b4~q\ & 
-- \paralelo_serial|serial\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \paralelo_serial|serial\(3),
	datab => \transmissor|pr_state.b3~q\,
	datac => \transmissor|pr_state.b4~q\,
	datad => \paralelo_serial|serial\(2),
	combout => \transmissor|Selector0~2_combout\);

-- Location: IOIBUF_X115_Y10_N1
\g~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g,
	o => \g~input_o\);

-- Location: FF_X114_Y17_N17
\paralelo_serial|serial[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \g~input_o\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	ena => \ALT_INV_save_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \paralelo_serial|serial\(0));

-- Location: IOIBUF_X115_Y11_N8
\f~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f,
	o => \f~input_o\);

-- Location: FF_X114_Y17_N29
\paralelo_serial|serial[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \f~input_o\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	ena => \ALT_INV_save_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \paralelo_serial|serial\(1));

-- Location: LCCOMB_X114_Y17_N16
\transmissor|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|Selector0~1_combout\ = (\transmissor|pr_state.b6~q\ & ((\paralelo_serial|serial\(0)) # ((\transmissor|pr_state.b5~q\ & \paralelo_serial|serial\(1))))) # (!\transmissor|pr_state.b6~q\ & (\transmissor|pr_state.b5~q\ & 
-- ((\paralelo_serial|serial\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmissor|pr_state.b6~q\,
	datab => \transmissor|pr_state.b5~q\,
	datac => \paralelo_serial|serial\(0),
	datad => \paralelo_serial|serial\(1),
	combout => \transmissor|Selector0~1_combout\);

-- Location: LCCOMB_X114_Y17_N2
\transmissor|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|Selector0~5_combout\ = (\transmissor|Selector0~4_combout\) # ((\transmissor|Selector0~3_combout\) # ((\transmissor|Selector0~2_combout\) # (\transmissor|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmissor|Selector0~4_combout\,
	datab => \transmissor|Selector0~3_combout\,
	datac => \transmissor|Selector0~2_combout\,
	datad => \transmissor|Selector0~1_combout\,
	combout => \transmissor|Selector0~5_combout\);

-- Location: IOIBUF_X115_Y15_N1
\parity_mode~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parity_mode,
	o => \parity_mode~input_o\);

-- Location: LCCOMB_X114_Y17_N8
\transmissor|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|Selector0~0_combout\ = (\transmissor|pr_state.parity~q\ & (\parityGenerator|parity~1_combout\ $ (\parity_mode~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parityGenerator|parity~1_combout\,
	datab => \parity_mode~input_o\,
	datac => \transmissor|pr_state.parity~q\,
	combout => \transmissor|Selector0~0_combout\);

-- Location: LCCOMB_X111_Y17_N0
\transmissor|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmissor|Selector0~6_combout\ = (\transmissor|Selector0~5_combout\) # ((\transmissor|pr_state.stop1~q\) # (\transmissor|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmissor|Selector0~5_combout\,
	datac => \transmissor|pr_state.stop1~q\,
	datad => \transmissor|Selector0~0_combout\,
	combout => \transmissor|Selector0~6_combout\);

-- Location: IOIBUF_X115_Y17_N1
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: FF_X114_Y17_N21
\paralelo_serial|serial[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	asdata => \a~input_o\,
	clrn => \main_rst_IN~input_o\,
	sload => VCC,
	ena => \ALT_INV_save_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \paralelo_serial|serial\(6));

-- Location: IOIBUF_X115_Y13_N8
\d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: LCCOMB_X114_Y17_N6
\paralelo_serial|serial[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \paralelo_serial|serial[3]~feeder_combout\ = \d~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d~input_o\,
	combout => \paralelo_serial|serial[3]~feeder_combout\);

-- Location: FF_X114_Y17_N7
\paralelo_serial|serial[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gerador_baudrate|ALT_INV_clk_tmp~clkctrl_outclk\,
	d => \paralelo_serial|serial[3]~feeder_combout\,
	clrn => \main_rst_IN~input_o\,
	ena => \ALT_INV_save_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \paralelo_serial|serial\(3));

-- Location: LCCOMB_X114_Y17_N20
\parityGenerator|parity~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \parityGenerator|parity~0_combout\ = \paralelo_serial|serial\(4) $ (\paralelo_serial|serial\(5) $ (\paralelo_serial|serial\(6) $ (\paralelo_serial|serial\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \paralelo_serial|serial\(4),
	datab => \paralelo_serial|serial\(5),
	datac => \paralelo_serial|serial\(6),
	datad => \paralelo_serial|serial\(3),
	combout => \parityGenerator|parity~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\parityGenerator|parity~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \parityGenerator|parity~1_combout\ = \paralelo_serial|serial\(0) $ (\paralelo_serial|serial\(1) $ (\paralelo_serial|serial\(2) $ (\parityGenerator|parity~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \paralelo_serial|serial\(0),
	datab => \paralelo_serial|serial\(1),
	datac => \paralelo_serial|serial\(2),
	datad => \parityGenerator|parity~0_combout\,
	combout => \parityGenerator|parity~1_combout\);

-- Location: IOIBUF_X0_Y36_N15
\main_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_main_clk,
	o => \main_clk~input_o\);

-- Location: LCCOMB_X60_Y4_N8
\gerador_baudrate|cnt[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[1]~30_combout\ = (\gerador_baudrate|cnt\(1) & (!\gerador_baudrate|cnt[0]~27\)) # (!\gerador_baudrate|cnt\(1) & ((\gerador_baudrate|cnt[0]~27\) # (GND)))
-- \gerador_baudrate|cnt[1]~31\ = CARRY((!\gerador_baudrate|cnt[0]~27\) # (!\gerador_baudrate|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(1),
	datad => VCC,
	cin => \gerador_baudrate|cnt[0]~27\,
	combout => \gerador_baudrate|cnt[1]~30_combout\,
	cout => \gerador_baudrate|cnt[1]~31\);

-- Location: LCCOMB_X60_Y3_N10
\gerador_baudrate|cnt[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[18]~64_combout\ = (\gerador_baudrate|cnt\(18) & (\gerador_baudrate|cnt[17]~63\ $ (GND))) # (!\gerador_baudrate|cnt\(18) & (!\gerador_baudrate|cnt[17]~63\ & VCC))
-- \gerador_baudrate|cnt[18]~65\ = CARRY((\gerador_baudrate|cnt\(18) & !\gerador_baudrate|cnt[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(18),
	datad => VCC,
	cin => \gerador_baudrate|cnt[17]~63\,
	combout => \gerador_baudrate|cnt[18]~64_combout\,
	cout => \gerador_baudrate|cnt[18]~65\);

-- Location: LCCOMB_X60_Y3_N14
\gerador_baudrate|cnt[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[20]~68_combout\ = (\gerador_baudrate|cnt\(20) & (\gerador_baudrate|cnt[19]~67\ $ (GND))) # (!\gerador_baudrate|cnt\(20) & (!\gerador_baudrate|cnt[19]~67\ & VCC))
-- \gerador_baudrate|cnt[20]~69\ = CARRY((\gerador_baudrate|cnt\(20) & !\gerador_baudrate|cnt[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(20),
	datad => VCC,
	cin => \gerador_baudrate|cnt[19]~67\,
	combout => \gerador_baudrate|cnt[20]~68_combout\,
	cout => \gerador_baudrate|cnt[20]~69\);

-- Location: FF_X60_Y3_N15
\gerador_baudrate|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[20]~68_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(20));

-- Location: LCCOMB_X60_Y3_N16
\gerador_baudrate|cnt[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[21]~70_combout\ = (\gerador_baudrate|cnt\(21) & (!\gerador_baudrate|cnt[20]~69\)) # (!\gerador_baudrate|cnt\(21) & ((\gerador_baudrate|cnt[20]~69\) # (GND)))
-- \gerador_baudrate|cnt[21]~71\ = CARRY((!\gerador_baudrate|cnt[20]~69\) # (!\gerador_baudrate|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(21),
	datad => VCC,
	cin => \gerador_baudrate|cnt[20]~69\,
	combout => \gerador_baudrate|cnt[21]~70_combout\,
	cout => \gerador_baudrate|cnt[21]~71\);

-- Location: FF_X60_Y3_N17
\gerador_baudrate|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[21]~70_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(21));

-- Location: LCCOMB_X60_Y3_N18
\gerador_baudrate|cnt[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[22]~72_combout\ = (\gerador_baudrate|cnt\(22) & (\gerador_baudrate|cnt[21]~71\ $ (GND))) # (!\gerador_baudrate|cnt\(22) & (!\gerador_baudrate|cnt[21]~71\ & VCC))
-- \gerador_baudrate|cnt[22]~73\ = CARRY((\gerador_baudrate|cnt\(22) & !\gerador_baudrate|cnt[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(22),
	datad => VCC,
	cin => \gerador_baudrate|cnt[21]~71\,
	combout => \gerador_baudrate|cnt[22]~72_combout\,
	cout => \gerador_baudrate|cnt[22]~73\);

-- Location: FF_X60_Y3_N19
\gerador_baudrate|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[22]~72_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(22));

-- Location: FF_X60_Y3_N21
\gerador_baudrate|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[23]~74_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(23));

-- Location: LCCOMB_X59_Y4_N2
\gerador_baudrate|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal1~3_combout\ = (!\gerador_baudrate|cnt\(15) & (!\gerador_baudrate|cnt\(23) & !\gerador_baudrate|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(15),
	datac => \gerador_baudrate|cnt\(23),
	datad => \gerador_baudrate|cnt\(5),
	combout => \gerador_baudrate|Equal1~3_combout\);

-- Location: LCCOMB_X60_Y4_N26
\gerador_baudrate|cnt[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[10]~48_combout\ = (\gerador_baudrate|cnt\(10) & (\gerador_baudrate|cnt[9]~47\ $ (GND))) # (!\gerador_baudrate|cnt\(10) & (!\gerador_baudrate|cnt[9]~47\ & VCC))
-- \gerador_baudrate|cnt[10]~49\ = CARRY((\gerador_baudrate|cnt\(10) & !\gerador_baudrate|cnt[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(10),
	datad => VCC,
	cin => \gerador_baudrate|cnt[9]~47\,
	combout => \gerador_baudrate|cnt[10]~48_combout\,
	cout => \gerador_baudrate|cnt[10]~49\);

-- Location: FF_X60_Y4_N27
\gerador_baudrate|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[10]~48_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(10));

-- Location: LCCOMB_X59_Y4_N6
\gerador_baudrate|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal1~8_combout\ = (\gerador_baudrate|Equal1~7_combout\ & (\gerador_baudrate|Equal1~3_combout\ & (\gerador_baudrate|Equal1~6_combout\ & !\gerador_baudrate|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal1~7_combout\,
	datab => \gerador_baudrate|Equal1~3_combout\,
	datac => \gerador_baudrate|Equal1~6_combout\,
	datad => \gerador_baudrate|cnt\(10),
	combout => \gerador_baudrate|Equal1~8_combout\);

-- Location: IOIBUF_X115_Y4_N22
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X59_Y4_N4
\gerador_baudrate|cnt[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[3]~28_combout\ = (\sel[1]~input_o\ & ((\gerador_baudrate|Equal7~3_combout\) # ((!\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((\gerador_baudrate|clk_tmp~1_combout\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal7~3_combout\,
	datab => \sel[1]~input_o\,
	datac => \gerador_baudrate|clk_tmp~1_combout\,
	datad => \sel[0]~input_o\,
	combout => \gerador_baudrate|cnt[3]~28_combout\);

-- Location: LCCOMB_X60_Y4_N4
\gerador_baudrate|cnt[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[3]~29_combout\ = (\gerador_baudrate|cnt[3]~28_combout\ & ((\gerador_baudrate|Equal5~3_combout\) # ((\sel[0]~input_o\)))) # (!\gerador_baudrate|cnt[3]~28_combout\ & (((\gerador_baudrate|Equal1~8_combout\ & !\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal5~3_combout\,
	datab => \gerador_baudrate|Equal1~8_combout\,
	datac => \gerador_baudrate|cnt[3]~28_combout\,
	datad => \sel[0]~input_o\,
	combout => \gerador_baudrate|cnt[3]~29_combout\);

-- Location: FF_X60_Y4_N9
\gerador_baudrate|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[1]~30_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(1));

-- Location: LCCOMB_X60_Y4_N12
\gerador_baudrate|cnt[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[3]~34_combout\ = (\gerador_baudrate|cnt\(3) & (!\gerador_baudrate|cnt[2]~33\)) # (!\gerador_baudrate|cnt\(3) & ((\gerador_baudrate|cnt[2]~33\) # (GND)))
-- \gerador_baudrate|cnt[3]~35\ = CARRY((!\gerador_baudrate|cnt[2]~33\) # (!\gerador_baudrate|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(3),
	datad => VCC,
	cin => \gerador_baudrate|cnt[2]~33\,
	combout => \gerador_baudrate|cnt[3]~34_combout\,
	cout => \gerador_baudrate|cnt[3]~35\);

-- Location: LCCOMB_X60_Y4_N14
\gerador_baudrate|cnt[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[4]~36_combout\ = (\gerador_baudrate|cnt\(4) & (\gerador_baudrate|cnt[3]~35\ $ (GND))) # (!\gerador_baudrate|cnt\(4) & (!\gerador_baudrate|cnt[3]~35\ & VCC))
-- \gerador_baudrate|cnt[4]~37\ = CARRY((\gerador_baudrate|cnt\(4) & !\gerador_baudrate|cnt[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(4),
	datad => VCC,
	cin => \gerador_baudrate|cnt[3]~35\,
	combout => \gerador_baudrate|cnt[4]~36_combout\,
	cout => \gerador_baudrate|cnt[4]~37\);

-- Location: FF_X60_Y4_N15
\gerador_baudrate|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[4]~36_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(4));

-- Location: LCCOMB_X60_Y4_N16
\gerador_baudrate|cnt[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[5]~38_combout\ = (\gerador_baudrate|cnt\(5) & (!\gerador_baudrate|cnt[4]~37\)) # (!\gerador_baudrate|cnt\(5) & ((\gerador_baudrate|cnt[4]~37\) # (GND)))
-- \gerador_baudrate|cnt[5]~39\ = CARRY((!\gerador_baudrate|cnt[4]~37\) # (!\gerador_baudrate|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(5),
	datad => VCC,
	cin => \gerador_baudrate|cnt[4]~37\,
	combout => \gerador_baudrate|cnt[5]~38_combout\,
	cout => \gerador_baudrate|cnt[5]~39\);

-- Location: FF_X60_Y4_N17
\gerador_baudrate|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[5]~38_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(5));

-- Location: LCCOMB_X60_Y4_N18
\gerador_baudrate|cnt[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[6]~40_combout\ = (\gerador_baudrate|cnt\(6) & (\gerador_baudrate|cnt[5]~39\ $ (GND))) # (!\gerador_baudrate|cnt\(6) & (!\gerador_baudrate|cnt[5]~39\ & VCC))
-- \gerador_baudrate|cnt[6]~41\ = CARRY((\gerador_baudrate|cnt\(6) & !\gerador_baudrate|cnt[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(6),
	datad => VCC,
	cin => \gerador_baudrate|cnt[5]~39\,
	combout => \gerador_baudrate|cnt[6]~40_combout\,
	cout => \gerador_baudrate|cnt[6]~41\);

-- Location: FF_X60_Y4_N19
\gerador_baudrate|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[6]~40_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(6));

-- Location: LCCOMB_X60_Y4_N20
\gerador_baudrate|cnt[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[7]~42_combout\ = (\gerador_baudrate|cnt\(7) & (!\gerador_baudrate|cnt[6]~41\)) # (!\gerador_baudrate|cnt\(7) & ((\gerador_baudrate|cnt[6]~41\) # (GND)))
-- \gerador_baudrate|cnt[7]~43\ = CARRY((!\gerador_baudrate|cnt[6]~41\) # (!\gerador_baudrate|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(7),
	datad => VCC,
	cin => \gerador_baudrate|cnt[6]~41\,
	combout => \gerador_baudrate|cnt[7]~42_combout\,
	cout => \gerador_baudrate|cnt[7]~43\);

-- Location: FF_X60_Y4_N21
\gerador_baudrate|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[7]~42_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(7));

-- Location: LCCOMB_X60_Y4_N24
\gerador_baudrate|cnt[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[9]~46_combout\ = (\gerador_baudrate|cnt\(9) & (!\gerador_baudrate|cnt[8]~45\)) # (!\gerador_baudrate|cnt\(9) & ((\gerador_baudrate|cnt[8]~45\) # (GND)))
-- \gerador_baudrate|cnt[9]~47\ = CARRY((!\gerador_baudrate|cnt[8]~45\) # (!\gerador_baudrate|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(9),
	datad => VCC,
	cin => \gerador_baudrate|cnt[8]~45\,
	combout => \gerador_baudrate|cnt[9]~46_combout\,
	cout => \gerador_baudrate|cnt[9]~47\);

-- Location: FF_X60_Y4_N25
\gerador_baudrate|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[9]~46_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(9));

-- Location: LCCOMB_X60_Y4_N28
\gerador_baudrate|cnt[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[11]~50_combout\ = (\gerador_baudrate|cnt\(11) & (!\gerador_baudrate|cnt[10]~49\)) # (!\gerador_baudrate|cnt\(11) & ((\gerador_baudrate|cnt[10]~49\) # (GND)))
-- \gerador_baudrate|cnt[11]~51\ = CARRY((!\gerador_baudrate|cnt[10]~49\) # (!\gerador_baudrate|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(11),
	datad => VCC,
	cin => \gerador_baudrate|cnt[10]~49\,
	combout => \gerador_baudrate|cnt[11]~50_combout\,
	cout => \gerador_baudrate|cnt[11]~51\);

-- Location: FF_X60_Y4_N29
\gerador_baudrate|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[11]~50_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(11));

-- Location: LCCOMB_X60_Y3_N0
\gerador_baudrate|cnt[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[13]~54_combout\ = (\gerador_baudrate|cnt\(13) & (!\gerador_baudrate|cnt[12]~53\)) # (!\gerador_baudrate|cnt\(13) & ((\gerador_baudrate|cnt[12]~53\) # (GND)))
-- \gerador_baudrate|cnt[13]~55\ = CARRY((!\gerador_baudrate|cnt[12]~53\) # (!\gerador_baudrate|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(13),
	datad => VCC,
	cin => \gerador_baudrate|cnt[12]~53\,
	combout => \gerador_baudrate|cnt[13]~54_combout\,
	cout => \gerador_baudrate|cnt[13]~55\);

-- Location: FF_X60_Y3_N1
\gerador_baudrate|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[13]~54_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(13));

-- Location: LCCOMB_X60_Y3_N2
\gerador_baudrate|cnt[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[14]~56_combout\ = (\gerador_baudrate|cnt\(14) & (\gerador_baudrate|cnt[13]~55\ $ (GND))) # (!\gerador_baudrate|cnt\(14) & (!\gerador_baudrate|cnt[13]~55\ & VCC))
-- \gerador_baudrate|cnt[14]~57\ = CARRY((\gerador_baudrate|cnt\(14) & !\gerador_baudrate|cnt[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(14),
	datad => VCC,
	cin => \gerador_baudrate|cnt[13]~55\,
	combout => \gerador_baudrate|cnt[14]~56_combout\,
	cout => \gerador_baudrate|cnt[14]~57\);

-- Location: FF_X60_Y3_N3
\gerador_baudrate|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[14]~56_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(14));

-- Location: LCCOMB_X60_Y3_N4
\gerador_baudrate|cnt[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[15]~58_combout\ = (\gerador_baudrate|cnt\(15) & (!\gerador_baudrate|cnt[14]~57\)) # (!\gerador_baudrate|cnt\(15) & ((\gerador_baudrate|cnt[14]~57\) # (GND)))
-- \gerador_baudrate|cnt[15]~59\ = CARRY((!\gerador_baudrate|cnt[14]~57\) # (!\gerador_baudrate|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(15),
	datad => VCC,
	cin => \gerador_baudrate|cnt[14]~57\,
	combout => \gerador_baudrate|cnt[15]~58_combout\,
	cout => \gerador_baudrate|cnt[15]~59\);

-- Location: FF_X60_Y3_N5
\gerador_baudrate|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[15]~58_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(15));

-- Location: LCCOMB_X60_Y3_N8
\gerador_baudrate|cnt[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|cnt[17]~62_combout\ = (\gerador_baudrate|cnt\(17) & (!\gerador_baudrate|cnt[16]~61\)) # (!\gerador_baudrate|cnt\(17) & ((\gerador_baudrate|cnt[16]~61\) # (GND)))
-- \gerador_baudrate|cnt[17]~63\ = CARRY((!\gerador_baudrate|cnt[16]~61\) # (!\gerador_baudrate|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gerador_baudrate|cnt\(17),
	datad => VCC,
	cin => \gerador_baudrate|cnt[16]~61\,
	combout => \gerador_baudrate|cnt[17]~62_combout\,
	cout => \gerador_baudrate|cnt[17]~63\);

-- Location: FF_X60_Y3_N9
\gerador_baudrate|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[17]~62_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(17));

-- Location: FF_X60_Y3_N11
\gerador_baudrate|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[18]~64_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(18));

-- Location: FF_X60_Y4_N13
\gerador_baudrate|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~inputclkctrl_outclk\,
	d => \gerador_baudrate|cnt[3]~34_combout\,
	sclr => \gerador_baudrate|cnt[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|cnt\(3));

-- Location: LCCOMB_X59_Y4_N24
\gerador_baudrate|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal1~2_combout\ = (\gerador_baudrate|cnt\(19) & (\gerador_baudrate|cnt\(18) & (!\gerador_baudrate|cnt\(3) & \gerador_baudrate|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(19),
	datab => \gerador_baudrate|cnt\(18),
	datac => \gerador_baudrate|cnt\(3),
	datad => \gerador_baudrate|cnt\(11),
	combout => \gerador_baudrate|Equal1~2_combout\);

-- Location: LCCOMB_X60_Y4_N2
\gerador_baudrate|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal1~5_combout\ = (\gerador_baudrate|cnt\(13) & (\gerador_baudrate|cnt\(21) & (!\gerador_baudrate|cnt\(4) & !\gerador_baudrate|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(13),
	datab => \gerador_baudrate|cnt\(21),
	datac => \gerador_baudrate|cnt\(4),
	datad => \gerador_baudrate|cnt\(9),
	combout => \gerador_baudrate|Equal1~5_combout\);

-- Location: LCCOMB_X59_Y4_N8
\gerador_baudrate|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal1~6_combout\ = (\gerador_baudrate|Equal1~1_combout\ & (\gerador_baudrate|Equal1~2_combout\ & (\gerador_baudrate|cnt\(20) & \gerador_baudrate|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal1~1_combout\,
	datab => \gerador_baudrate|Equal1~2_combout\,
	datac => \gerador_baudrate|cnt\(20),
	datad => \gerador_baudrate|Equal1~5_combout\,
	combout => \gerador_baudrate|Equal1~6_combout\);

-- Location: LCCOMB_X60_Y3_N28
\gerador_baudrate|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal3~0_combout\ = (!\gerador_baudrate|cnt\(16) & (!\gerador_baudrate|cnt\(14) & !\gerador_baudrate|cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(16),
	datab => \gerador_baudrate|cnt\(14),
	datad => \gerador_baudrate|cnt\(22),
	combout => \gerador_baudrate|Equal3~0_combout\);

-- Location: LCCOMB_X60_Y3_N30
\gerador_baudrate|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|Equal3~2_combout\ = (\gerador_baudrate|cnt\(23) & (\gerador_baudrate|Equal3~0_combout\ & (\gerador_baudrate|cnt\(15) & \gerador_baudrate|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|cnt\(23),
	datab => \gerador_baudrate|Equal3~0_combout\,
	datac => \gerador_baudrate|cnt\(15),
	datad => \gerador_baudrate|cnt\(5),
	combout => \gerador_baudrate|Equal3~2_combout\);

-- Location: LCCOMB_X59_Y4_N30
\gerador_baudrate|clk_tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|clk_tmp~1_combout\ = (\gerador_baudrate|Equal3~1_combout\ & (\gerador_baudrate|Equal1~6_combout\ & \gerador_baudrate|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal3~1_combout\,
	datab => \gerador_baudrate|Equal1~6_combout\,
	datac => \gerador_baudrate|Equal3~2_combout\,
	combout => \gerador_baudrate|clk_tmp~1_combout\);

-- Location: LCCOMB_X59_Y4_N16
\gerador_baudrate|clk_tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|clk_tmp~2_combout\ = (\sel[0]~input_o\ & ((\gerador_baudrate|clk_tmp~1_combout\))) # (!\sel[0]~input_o\ & (\gerador_baudrate|Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|Equal1~8_combout\,
	datac => \gerador_baudrate|clk_tmp~1_combout\,
	datad => \sel[0]~input_o\,
	combout => \gerador_baudrate|clk_tmp~2_combout\);

-- Location: LCCOMB_X59_Y4_N20
\gerador_baudrate|clk_tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gerador_baudrate|clk_tmp~3_combout\ = \gerador_baudrate|clk_tmp~q\ $ (((\sel[1]~input_o\ & (\gerador_baudrate|clk_tmp~0_combout\)) # (!\sel[1]~input_o\ & ((\gerador_baudrate|clk_tmp~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gerador_baudrate|clk_tmp~0_combout\,
	datab => \gerador_baudrate|clk_tmp~2_combout\,
	datac => \gerador_baudrate|clk_tmp~q\,
	datad => \sel[1]~input_o\,
	combout => \gerador_baudrate|clk_tmp~3_combout\);

-- Location: FF_X59_Y4_N21
\gerador_baudrate|clk_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \main_clk~input_o\,
	d => \gerador_baudrate|clk_tmp~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gerador_baudrate|clk_tmp~q\);

ww_tx <= \tx~output_o\;

ww_parity_mode_out <= \parity_mode_out~output_o\;

ww_paridade <= \paridade~output_o\;

ww_baudrate <= \baudrate~output_o\;

ww_led <= \led~output_o\;

ww_led_clk <= \led_clk~output_o\;
END structure;


