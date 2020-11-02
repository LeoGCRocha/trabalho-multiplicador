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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/02/2020 18:21:28"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplier IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	inicio : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(15 DOWNTO 0)
	);
END multiplier;

-- Design Ports Information
-- pronto	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[4]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[5]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[6]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[7]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[8]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[9]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[10]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[11]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[12]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[13]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[14]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[15]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[8]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[9]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[10]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[11]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[12]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[13]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[14]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[15]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[8]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[9]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[10]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[11]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[12]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[13]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[14]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[15]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_inicio : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \four_bit|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~5_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[2]~2_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[3]~3_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~14_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[5]~5_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~20_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[7]~7_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[8]~8_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[9]~9_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~32_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~35_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[12]~12_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[13]~13_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~44_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[15]~15_combout\ : std_logic;
SIGNAL \four_bit|geraBz|Equal0~3_combout\ : std_logic;
SIGNAL \four_bit|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[0]~0_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[1]~1_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[2]~2_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[3]~3_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[9]~9_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[15]~15_combout\ : std_logic;
SIGNAL \four_bit|regB|q[6]~feeder_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \bloco_controle|state~12_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bloco_controle|state.S1~regout\ : std_logic;
SIGNAL \bloco_controle|WideOr0~combout\ : std_logic;
SIGNAL \bloco_controle|ini~combout\ : std_logic;
SIGNAL \four_bit|geraBz|Equal0~2_combout\ : std_logic;
SIGNAL \four_bit|geraBz|Equal0~1_combout\ : std_logic;
SIGNAL \four_bit|regB|q[3]~feeder_combout\ : std_logic;
SIGNAL \four_bit|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \four_bit|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \four_bit|geraBz|Equal0~4_combout\ : std_logic;
SIGNAL \bloco_controle|WideOr1~combout\ : std_logic;
SIGNAL \bloco_controle|dec~combout\ : std_logic;
SIGNAL \four_bit|mux2|y[6]~6_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~17_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~11_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~8_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~0_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~2_cout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~4\ : std_logic;
SIGNAL \four_bit|somasub|Add0~6_combout\ : std_logic;
SIGNAL \bloco_controle|WideOr2~0_combout\ : std_logic;
SIGNAL \bloco_controle|CP~combout\ : std_logic;
SIGNAL \four_bit|mux2|y[1]~1_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~7\ : std_logic;
SIGNAL \four_bit|somasub|Add0~10\ : std_logic;
SIGNAL \four_bit|somasub|Add0~13\ : std_logic;
SIGNAL \four_bit|somasub|Add0~15_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[4]~4_combout\ : std_logic;
SIGNAL \bloco_controle|WideOr0~0_combout\ : std_logic;
SIGNAL \bloco_controle|CA~combout\ : std_logic;
SIGNAL \four_bit|mux2|y[4]~4_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~16\ : std_logic;
SIGNAL \four_bit|somasub|Add0~19\ : std_logic;
SIGNAL \four_bit|somasub|Add0~21_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[6]~6_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~18_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[5]~5_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~23_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~22\ : std_logic;
SIGNAL \four_bit|somasub|Add0~24_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[7]~7_combout\ : std_logic;
SIGNAL \four_bit|geraAz|Equal0~1_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~26_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~25\ : std_logic;
SIGNAL \four_bit|somasub|Add0~27_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[8]~8_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[14]~14_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~41_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~38_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~29_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~28\ : std_logic;
SIGNAL \four_bit|somasub|Add0~31\ : std_logic;
SIGNAL \four_bit|somasub|Add0~33_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[10]~10_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[10]~10_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~34\ : std_logic;
SIGNAL \four_bit|somasub|Add0~36_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[11]~11_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~37\ : std_logic;
SIGNAL \four_bit|somasub|Add0~40\ : std_logic;
SIGNAL \four_bit|somasub|Add0~43\ : std_logic;
SIGNAL \four_bit|somasub|Add0~45_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[14]~14_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~42_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[13]~13_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~39_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[12]~12_combout\ : std_logic;
SIGNAL \four_bit|geraAz|Equal0~3_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[11]~11_combout\ : std_logic;
SIGNAL \four_bit|geraAz|Equal0~2_combout\ : std_logic;
SIGNAL \four_bit|geraAz|Equal0~4_combout\ : std_logic;
SIGNAL \bloco_controle|process_0~0_combout\ : std_logic;
SIGNAL \bloco_controle|state~13_combout\ : std_logic;
SIGNAL \bloco_controle|state.S3~regout\ : std_logic;
SIGNAL \bloco_controle|state.S4~regout\ : std_logic;
SIGNAL \bloco_controle|CA~1_combout\ : std_logic;
SIGNAL \bloco_controle|state.S2~regout\ : std_logic;
SIGNAL \bloco_controle|state~11_combout\ : std_logic;
SIGNAL \bloco_controle|state.S5~regout\ : std_logic;
SIGNAL \bloco_controle|Selector3~0_combout\ : std_logic;
SIGNAL \bloco_controle|state.S0~regout\ : std_logic;
SIGNAL \bloco_controle|WideOr3~0_combout\ : std_logic;
SIGNAL \bloco_controle|pronto~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \four_bit|somasub|Add0~3_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~9_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~12_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~30_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~47_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~46\ : std_logic;
SIGNAL \four_bit|somasub|Add0~48_combout\ : std_logic;
SIGNAL \four_bit|regB|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \four_bit|regA|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \four_bit|regP|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_inicio <= inicio;
ww_reset <= reset;
ww_clk <= clk;
pronto <= ww_pronto;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCFF_X42_Y29_N21
\four_bit|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[0]~0_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(0));

-- Location: LCCOMB_X43_Y29_N6
\four_bit|mux2|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[0]~0_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(0))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(0),
	datab => \four_bit|regP|q\(0),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[0]~0_combout\);

-- Location: LCCOMB_X44_Y29_N4
\four_bit|somasub|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~5_combout\ = (\b~combout\(1)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~5_combout\);

-- Location: LCFF_X43_Y29_N15
\four_bit|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[1]~1_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(1));

-- Location: LCFF_X42_Y29_N15
\four_bit|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[2]~2_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(2));

-- Location: LCCOMB_X43_Y29_N12
\four_bit|mux2|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[2]~2_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(2))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(2),
	datac => \four_bit|regP|q\(2),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[2]~2_combout\);

-- Location: LCFF_X42_Y29_N29
\four_bit|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[3]~3_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(3));

-- Location: LCCOMB_X43_Y29_N10
\four_bit|mux2|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[3]~3_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(3))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regA|q\(3),
	datac => \four_bit|regP|q\(3),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[3]~3_combout\);

-- Location: LCCOMB_X44_Y29_N6
\four_bit|somasub|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~14_combout\ = (\b~combout\(4)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(4),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~14_combout\);

-- Location: LCCOMB_X43_Y29_N2
\four_bit|mux2|y[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[5]~5_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(5))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regA|q\(5),
	datac => \four_bit|regP|q\(5),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[5]~5_combout\);

-- Location: LCCOMB_X44_Y29_N16
\four_bit|somasub|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~20_combout\ = (\b~combout\(6)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(6),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~20_combout\);

-- Location: LCCOMB_X44_Y28_N16
\four_bit|mux2|y[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[7]~7_combout\ = (\bloco_controle|dec~combout\ & ((\four_bit|regA|q\(7)))) # (!\bloco_controle|dec~combout\ & (\four_bit|regP|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regP|q\(7),
	datac => \four_bit|regA|q\(7),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[7]~7_combout\);

-- Location: LCCOMB_X43_Y28_N24
\four_bit|mux2|y[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[8]~8_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(8))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regA|q\(8),
	datac => \four_bit|regP|q\(8),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[8]~8_combout\);

-- Location: LCFF_X43_Y28_N21
\four_bit|regA|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[9]~9_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(9));

-- Location: LCCOMB_X43_Y28_N18
\four_bit|mux2|y[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[9]~9_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(9))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(9),
	datab => \four_bit|regP|q\(9),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[9]~9_combout\);

-- Location: LCCOMB_X44_Y29_N24
\four_bit|somasub|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~32_combout\ = (\b~combout\(10)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~32_combout\);

-- Location: LCCOMB_X44_Y28_N26
\four_bit|somasub|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~35_combout\ = (\bloco_controle|dec~combout\) # (\b~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|dec~combout\,
	datad => \b~combout\(11),
	combout => \four_bit|somasub|Add0~35_combout\);

-- Location: LCCOMB_X44_Y28_N4
\four_bit|mux2|y[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[12]~12_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(12))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regA|q\(12),
	datac => \bloco_controle|dec~combout\,
	datad => \four_bit|regP|q\(12),
	combout => \four_bit|mux2|y[12]~12_combout\);

-- Location: LCCOMB_X44_Y28_N6
\four_bit|mux2|y[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[13]~13_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(13))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regA|q\(13),
	datac => \bloco_controle|dec~combout\,
	datad => \four_bit|regP|q\(13),
	combout => \four_bit|mux2|y[13]~13_combout\);

-- Location: LCCOMB_X42_Y28_N30
\four_bit|somasub|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~44_combout\ = (\b~combout\(14)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(14),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~44_combout\);

-- Location: LCFF_X43_Y28_N31
\four_bit|regA|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[15]~15_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(15));

-- Location: LCCOMB_X42_Y28_N14
\four_bit|mux2|y[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[15]~15_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(15))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regA|q\(15),
	datac => \four_bit|regP|q\(15),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[15]~15_combout\);

-- Location: LCFF_X46_Y29_N13
\four_bit|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(2),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(2));

-- Location: LCFF_X45_Y29_N7
\four_bit|regB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|regB|q[6]~feeder_combout\,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(6));

-- Location: LCFF_X46_Y29_N21
\four_bit|regB|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(10),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(10));

-- Location: LCFF_X45_Y29_N31
\four_bit|regB|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(12),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(12));

-- Location: LCFF_X45_Y29_N29
\four_bit|regB|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(13),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(13));

-- Location: LCFF_X45_Y29_N5
\four_bit|regB|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(14),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(14));

-- Location: LCFF_X45_Y29_N11
\four_bit|regB|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(15),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(15));

-- Location: LCCOMB_X45_Y29_N4
\four_bit|geraBz|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraBz|Equal0~3_combout\ = (!\four_bit|regB|q\(15) & (!\four_bit|regB|q\(13) & (!\four_bit|regB|q\(14) & !\four_bit|regB|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(15),
	datab => \four_bit|regB|q\(13),
	datac => \four_bit|regB|q\(14),
	datad => \four_bit|regB|q\(12),
	combout => \four_bit|geraBz|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y29_N24
\four_bit|geraAz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraAz|Equal0~0_combout\ = (!\four_bit|regA|q\(1) & (!\four_bit|regA|q\(2) & (!\four_bit|regA|q\(3) & !\four_bit|regA|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(1),
	datab => \four_bit|regA|q\(2),
	datac => \four_bit|regA|q\(3),
	datad => \four_bit|regA|q\(0),
	combout => \four_bit|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y29_N20
\four_bit|mux1|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[0]~0_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(0))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datac => \a~combout\(0),
	datad => \four_bit|somasub|Add0~3_combout\,
	combout => \four_bit|mux1|y[0]~0_combout\);

-- Location: LCCOMB_X43_Y29_N14
\four_bit|mux1|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[1]~1_combout\ = (\bloco_controle|ini~combout\ & ((\a~combout\(1)))) # (!\bloco_controle|ini~combout\ & (\four_bit|somasub|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|ini~combout\,
	datac => \four_bit|somasub|Add0~6_combout\,
	datad => \a~combout\(1),
	combout => \four_bit|mux1|y[1]~1_combout\);

-- Location: LCCOMB_X42_Y29_N14
\four_bit|mux1|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[2]~2_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(2))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datac => \a~combout\(2),
	datad => \four_bit|somasub|Add0~9_combout\,
	combout => \four_bit|mux1|y[2]~2_combout\);

-- Location: LCCOMB_X42_Y29_N28
\four_bit|mux1|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[3]~3_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(3))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datac => \a~combout\(3),
	datad => \four_bit|somasub|Add0~12_combout\,
	combout => \four_bit|mux1|y[3]~3_combout\);

-- Location: LCCOMB_X43_Y28_N20
\four_bit|mux1|y[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[9]~9_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(9))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datab => \a~combout\(9),
	datac => \four_bit|somasub|Add0~30_combout\,
	combout => \four_bit|mux1|y[9]~9_combout\);

-- Location: LCCOMB_X43_Y28_N30
\four_bit|mux1|y[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[15]~15_combout\ = (\bloco_controle|ini~combout\ & ((\a~combout\(15)))) # (!\bloco_controle|ini~combout\ & (\four_bit|somasub|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datac => \four_bit|somasub|Add0~48_combout\,
	datad => \a~combout\(15),
	combout => \four_bit|mux1|y[15]~15_combout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LCCOMB_X45_Y29_N6
\four_bit|regB|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regB|q[6]~feeder_combout\ = \b~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b~combout\(6),
	combout => \four_bit|regB|q[6]~feeder_combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inicio~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_inicio,
	combout => \inicio~combout\);

-- Location: LCCOMB_X45_Y29_N28
\bloco_controle|state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~12_combout\ = (!\bloco_controle|state.S0~regout\ & \inicio~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \bloco_controle|state~12_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X44_Y29_N31
\bloco_controle|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bloco_controle|state~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S1~regout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LCCOMB_X45_Y29_N24
\bloco_controle|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr0~combout\ = (\bloco_controle|state.S3~regout\) # ((\bloco_controle|state.S4~regout\) # (\bloco_controle|state.S5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S3~regout\,
	datac => \bloco_controle|state.S4~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_controle|WideOr0~combout\);

-- Location: LCCOMB_X44_Y29_N12
\bloco_controle|ini\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|ini~combout\ = (\bloco_controle|WideOr0~combout\ & (\bloco_controle|ini~combout\)) # (!\bloco_controle|WideOr0~combout\ & ((\bloco_controle|state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datab => \bloco_controle|WideOr0~combout\,
	datad => \bloco_controle|state.S1~regout\,
	combout => \bloco_controle|ini~combout\);

-- Location: LCFF_X46_Y29_N19
\four_bit|regB|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(9),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(9));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LCFF_X46_Y29_N31
\four_bit|regB|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(11),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(11));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LCFF_X46_Y29_N29
\four_bit|regB|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(8),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(8));

-- Location: LCCOMB_X46_Y29_N30
\four_bit|geraBz|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraBz|Equal0~2_combout\ = (!\four_bit|regB|q\(10) & (!\four_bit|regB|q\(9) & (!\four_bit|regB|q\(11) & !\four_bit|regB|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(10),
	datab => \four_bit|regB|q\(9),
	datac => \four_bit|regB|q\(11),
	datad => \four_bit|regB|q\(8),
	combout => \four_bit|geraBz|Equal0~2_combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCFF_X45_Y29_N9
\four_bit|regB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(5),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(5));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCFF_X45_Y29_N1
\four_bit|regB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(7),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(7));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCFF_X45_Y29_N13
\four_bit|regB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(4),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(4));

-- Location: LCCOMB_X45_Y29_N0
\four_bit|geraBz|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraBz|Equal0~1_combout\ = (!\four_bit|regB|q\(6) & (!\four_bit|regB|q\(5) & (!\four_bit|regB|q\(7) & !\four_bit|regB|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(6),
	datab => \four_bit|regB|q\(5),
	datac => \four_bit|regB|q\(7),
	datad => \four_bit|regB|q\(4),
	combout => \four_bit|geraBz|Equal0~1_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X46_Y29_N2
\four_bit|regB|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regB|q[3]~feeder_combout\ = \b~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b~combout\(3),
	combout => \four_bit|regB|q[3]~feeder_combout\);

-- Location: LCFF_X46_Y29_N3
\four_bit|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|regB|q[3]~feeder_combout\,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(3));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCFF_X46_Y29_N25
\four_bit|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(0),
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X46_Y29_N6
\four_bit|regB|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regB|q[1]~feeder_combout\ = \b~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b~combout\(1),
	combout => \four_bit|regB|q[1]~feeder_combout\);

-- Location: LCFF_X46_Y29_N7
\four_bit|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|regB|q[1]~feeder_combout\,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(1));

-- Location: LCCOMB_X46_Y29_N24
\four_bit|geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraBz|Equal0~0_combout\ = (!\four_bit|regB|q\(2) & (!\four_bit|regB|q\(3) & (!\four_bit|regB|q\(0) & !\four_bit|regB|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(2),
	datab => \four_bit|regB|q\(3),
	datac => \four_bit|regB|q\(0),
	datad => \four_bit|regB|q\(1),
	combout => \four_bit|geraBz|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y29_N2
\four_bit|geraBz|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraBz|Equal0~4_combout\ = (\four_bit|geraBz|Equal0~3_combout\ & (\four_bit|geraBz|Equal0~2_combout\ & (\four_bit|geraBz|Equal0~1_combout\ & \four_bit|geraBz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|geraBz|Equal0~3_combout\,
	datab => \four_bit|geraBz|Equal0~2_combout\,
	datac => \four_bit|geraBz|Equal0~1_combout\,
	datad => \four_bit|geraBz|Equal0~0_combout\,
	combout => \four_bit|geraBz|Equal0~4_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LCCOMB_X45_Y29_N8
\bloco_controle|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr1~combout\ = (\bloco_controle|state.S1~regout\) # ((\bloco_controle|state.S3~regout\) # (\bloco_controle|state.S5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datab => \bloco_controle|state.S3~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_controle|WideOr1~combout\);

-- Location: LCCOMB_X44_Y29_N2
\bloco_controle|dec\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|dec~combout\ = (\bloco_controle|WideOr1~combout\ & (\bloco_controle|dec~combout\)) # (!\bloco_controle|WideOr1~combout\ & ((\bloco_controle|state.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|dec~combout\,
	datac => \bloco_controle|WideOr1~combout\,
	datad => \bloco_controle|state.S4~regout\,
	combout => \bloco_controle|dec~combout\);

-- Location: LCCOMB_X43_Y29_N4
\four_bit|mux2|y[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[6]~6_combout\ = (\bloco_controle|dec~combout\ & ((\four_bit|regA|q\(6)))) # (!\bloco_controle|dec~combout\ & (\four_bit|regP|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regP|q\(6),
	datab => \four_bit|regA|q\(6),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[6]~6_combout\);

-- Location: LCCOMB_X44_Y29_N26
\four_bit|somasub|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~17_combout\ = (\b~combout\(5)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(5),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~17_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X44_Y29_N18
\four_bit|somasub|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~11_combout\ = (\b~combout\(3)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(3),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~11_combout\);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X44_Y29_N28
\four_bit|somasub|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~8_combout\ = (\b~combout\(2)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~8_combout\);

-- Location: LCCOMB_X44_Y29_N14
\four_bit|somasub|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~0_combout\ = (\b~combout\(0) & !\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~0_combout\);

-- Location: LCCOMB_X43_Y29_N16
\four_bit|somasub|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~2_cout\ = CARRY(\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|dec~combout\,
	datad => VCC,
	cout => \four_bit|somasub|Add0~2_cout\);

-- Location: LCCOMB_X43_Y29_N18
\four_bit|somasub|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~3_combout\ = (\four_bit|mux2|y[0]~0_combout\ & ((\four_bit|somasub|Add0~0_combout\ & (\four_bit|somasub|Add0~2_cout\ & VCC)) # (!\four_bit|somasub|Add0~0_combout\ & (!\four_bit|somasub|Add0~2_cout\)))) # 
-- (!\four_bit|mux2|y[0]~0_combout\ & ((\four_bit|somasub|Add0~0_combout\ & (!\four_bit|somasub|Add0~2_cout\)) # (!\four_bit|somasub|Add0~0_combout\ & ((\four_bit|somasub|Add0~2_cout\) # (GND)))))
-- \four_bit|somasub|Add0~4\ = CARRY((\four_bit|mux2|y[0]~0_combout\ & (!\four_bit|somasub|Add0~0_combout\ & !\four_bit|somasub|Add0~2_cout\)) # (!\four_bit|mux2|y[0]~0_combout\ & ((!\four_bit|somasub|Add0~2_cout\) # (!\four_bit|somasub|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[0]~0_combout\,
	datab => \four_bit|somasub|Add0~0_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~2_cout\,
	combout => \four_bit|somasub|Add0~3_combout\,
	cout => \four_bit|somasub|Add0~4\);

-- Location: LCCOMB_X43_Y29_N20
\four_bit|somasub|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~6_combout\ = ((\four_bit|somasub|Add0~5_combout\ $ (\four_bit|mux2|y[1]~1_combout\ $ (!\four_bit|somasub|Add0~4\)))) # (GND)
-- \four_bit|somasub|Add0~7\ = CARRY((\four_bit|somasub|Add0~5_combout\ & ((\four_bit|mux2|y[1]~1_combout\) # (!\four_bit|somasub|Add0~4\))) # (!\four_bit|somasub|Add0~5_combout\ & (\four_bit|mux2|y[1]~1_combout\ & !\four_bit|somasub|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|somasub|Add0~5_combout\,
	datab => \four_bit|mux2|y[1]~1_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~4\,
	combout => \four_bit|somasub|Add0~6_combout\,
	cout => \four_bit|somasub|Add0~7\);

-- Location: LCCOMB_X44_Y29_N30
\bloco_controle|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr2~0_combout\ = (\bloco_controle|state.S2~regout\) # ((\bloco_controle|state.S1~regout\) # (\bloco_controle|state.S5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S2~regout\,
	datac => \bloco_controle|state.S1~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_controle|WideOr2~0_combout\);

-- Location: LCCOMB_X45_Y29_N12
\bloco_controle|CP\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|CP~combout\ = (\bloco_controle|WideOr2~0_combout\ & (\bloco_controle|CP~combout\)) # (!\bloco_controle|WideOr2~0_combout\ & ((\bloco_controle|state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|CP~combout\,
	datab => \bloco_controle|state.S3~regout\,
	datad => \bloco_controle|WideOr2~0_combout\,
	combout => \bloco_controle|CP~combout\);

-- Location: LCFF_X43_Y29_N7
\four_bit|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~6_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(1));

-- Location: LCCOMB_X43_Y29_N8
\four_bit|mux2|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[1]~1_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(1))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(1),
	datab => \four_bit|regP|q\(1),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[1]~1_combout\);

-- Location: LCCOMB_X43_Y29_N22
\four_bit|somasub|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~9_combout\ = (\four_bit|mux2|y[2]~2_combout\ & ((\four_bit|somasub|Add0~8_combout\ & (\four_bit|somasub|Add0~7\ & VCC)) # (!\four_bit|somasub|Add0~8_combout\ & (!\four_bit|somasub|Add0~7\)))) # (!\four_bit|mux2|y[2]~2_combout\ & 
-- ((\four_bit|somasub|Add0~8_combout\ & (!\four_bit|somasub|Add0~7\)) # (!\four_bit|somasub|Add0~8_combout\ & ((\four_bit|somasub|Add0~7\) # (GND)))))
-- \four_bit|somasub|Add0~10\ = CARRY((\four_bit|mux2|y[2]~2_combout\ & (!\four_bit|somasub|Add0~8_combout\ & !\four_bit|somasub|Add0~7\)) # (!\four_bit|mux2|y[2]~2_combout\ & ((!\four_bit|somasub|Add0~7\) # (!\four_bit|somasub|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[2]~2_combout\,
	datab => \four_bit|somasub|Add0~8_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~7\,
	combout => \four_bit|somasub|Add0~9_combout\,
	cout => \four_bit|somasub|Add0~10\);

-- Location: LCCOMB_X43_Y29_N24
\four_bit|somasub|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~12_combout\ = ((\four_bit|mux2|y[3]~3_combout\ $ (\four_bit|somasub|Add0~11_combout\ $ (!\four_bit|somasub|Add0~10\)))) # (GND)
-- \four_bit|somasub|Add0~13\ = CARRY((\four_bit|mux2|y[3]~3_combout\ & ((\four_bit|somasub|Add0~11_combout\) # (!\four_bit|somasub|Add0~10\))) # (!\four_bit|mux2|y[3]~3_combout\ & (\four_bit|somasub|Add0~11_combout\ & !\four_bit|somasub|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[3]~3_combout\,
	datab => \four_bit|somasub|Add0~11_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~10\,
	combout => \four_bit|somasub|Add0~12_combout\,
	cout => \four_bit|somasub|Add0~13\);

-- Location: LCCOMB_X43_Y29_N26
\four_bit|somasub|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~15_combout\ = (\four_bit|somasub|Add0~14_combout\ & ((\four_bit|mux2|y[4]~4_combout\ & (\four_bit|somasub|Add0~13\ & VCC)) # (!\four_bit|mux2|y[4]~4_combout\ & (!\four_bit|somasub|Add0~13\)))) # (!\four_bit|somasub|Add0~14_combout\ 
-- & ((\four_bit|mux2|y[4]~4_combout\ & (!\four_bit|somasub|Add0~13\)) # (!\four_bit|mux2|y[4]~4_combout\ & ((\four_bit|somasub|Add0~13\) # (GND)))))
-- \four_bit|somasub|Add0~16\ = CARRY((\four_bit|somasub|Add0~14_combout\ & (!\four_bit|mux2|y[4]~4_combout\ & !\four_bit|somasub|Add0~13\)) # (!\four_bit|somasub|Add0~14_combout\ & ((!\four_bit|somasub|Add0~13\) # (!\four_bit|mux2|y[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|somasub|Add0~14_combout\,
	datab => \four_bit|mux2|y[4]~4_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~13\,
	combout => \four_bit|somasub|Add0~15_combout\,
	cout => \four_bit|somasub|Add0~16\);

-- Location: LCCOMB_X42_Y29_N22
\four_bit|mux1|y[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[4]~4_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(4))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(4),
	datac => \four_bit|somasub|Add0~15_combout\,
	datad => \bloco_controle|ini~combout\,
	combout => \four_bit|mux1|y[4]~4_combout\);

-- Location: LCCOMB_X45_Y29_N14
\bloco_controle|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr0~0_combout\ = (!\bloco_controle|state.S3~regout\ & !\bloco_controle|state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S3~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_controle|WideOr0~0_combout\);

-- Location: LCCOMB_X44_Y29_N22
\bloco_controle|CA\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|CA~combout\ = (\bloco_controle|WideOr0~0_combout\ & ((\bloco_controle|CA~1_combout\))) # (!\bloco_controle|WideOr0~0_combout\ & (\bloco_controle|CA~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|CA~combout\,
	datac => \bloco_controle|WideOr0~0_combout\,
	datad => \bloco_controle|CA~1_combout\,
	combout => \bloco_controle|CA~combout\);

-- Location: LCFF_X42_Y29_N23
\four_bit|regA|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[4]~4_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(4));

-- Location: LCFF_X43_Y29_N1
\four_bit|regP|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~15_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(4));

-- Location: LCCOMB_X43_Y29_N0
\four_bit|mux2|y[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[4]~4_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(4))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regA|q\(4),
	datac => \four_bit|regP|q\(4),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[4]~4_combout\);

-- Location: LCCOMB_X43_Y29_N28
\four_bit|somasub|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~18_combout\ = ((\four_bit|mux2|y[5]~5_combout\ $ (\four_bit|somasub|Add0~17_combout\ $ (!\four_bit|somasub|Add0~16\)))) # (GND)
-- \four_bit|somasub|Add0~19\ = CARRY((\four_bit|mux2|y[5]~5_combout\ & ((\four_bit|somasub|Add0~17_combout\) # (!\four_bit|somasub|Add0~16\))) # (!\four_bit|mux2|y[5]~5_combout\ & (\four_bit|somasub|Add0~17_combout\ & !\four_bit|somasub|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[5]~5_combout\,
	datab => \four_bit|somasub|Add0~17_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~16\,
	combout => \four_bit|somasub|Add0~18_combout\,
	cout => \four_bit|somasub|Add0~19\);

-- Location: LCCOMB_X43_Y29_N30
\four_bit|somasub|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~21_combout\ = (\four_bit|somasub|Add0~20_combout\ & ((\four_bit|mux2|y[6]~6_combout\ & (\four_bit|somasub|Add0~19\ & VCC)) # (!\four_bit|mux2|y[6]~6_combout\ & (!\four_bit|somasub|Add0~19\)))) # (!\four_bit|somasub|Add0~20_combout\ 
-- & ((\four_bit|mux2|y[6]~6_combout\ & (!\four_bit|somasub|Add0~19\)) # (!\four_bit|mux2|y[6]~6_combout\ & ((\four_bit|somasub|Add0~19\) # (GND)))))
-- \four_bit|somasub|Add0~22\ = CARRY((\four_bit|somasub|Add0~20_combout\ & (!\four_bit|mux2|y[6]~6_combout\ & !\four_bit|somasub|Add0~19\)) # (!\four_bit|somasub|Add0~20_combout\ & ((!\four_bit|somasub|Add0~19\) # (!\four_bit|mux2|y[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|somasub|Add0~20_combout\,
	datab => \four_bit|mux2|y[6]~6_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~19\,
	combout => \four_bit|somasub|Add0~21_combout\,
	cout => \four_bit|somasub|Add0~22\);

-- Location: LCCOMB_X42_Y29_N18
\four_bit|mux1|y[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[6]~6_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(6))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datac => \a~combout\(6),
	datad => \four_bit|somasub|Add0~21_combout\,
	combout => \four_bit|mux1|y[6]~6_combout\);

-- Location: LCFF_X42_Y29_N19
\four_bit|regA|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[6]~6_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(6));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X42_Y29_N16
\four_bit|mux1|y[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[5]~5_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(5))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datac => \a~combout\(5),
	datad => \four_bit|somasub|Add0~18_combout\,
	combout => \four_bit|mux1|y[5]~5_combout\);

-- Location: LCFF_X42_Y29_N17
\four_bit|regA|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[5]~5_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(5));

-- Location: LCCOMB_X44_Y28_N28
\four_bit|somasub|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~23_combout\ = (\b~combout\(7)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(7),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~23_combout\);

-- Location: LCCOMB_X43_Y28_N0
\four_bit|somasub|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~24_combout\ = ((\four_bit|mux2|y[7]~7_combout\ $ (\four_bit|somasub|Add0~23_combout\ $ (!\four_bit|somasub|Add0~22\)))) # (GND)
-- \four_bit|somasub|Add0~25\ = CARRY((\four_bit|mux2|y[7]~7_combout\ & ((\four_bit|somasub|Add0~23_combout\) # (!\four_bit|somasub|Add0~22\))) # (!\four_bit|mux2|y[7]~7_combout\ & (\four_bit|somasub|Add0~23_combout\ & !\four_bit|somasub|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[7]~7_combout\,
	datab => \four_bit|somasub|Add0~23_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~22\,
	combout => \four_bit|somasub|Add0~24_combout\,
	cout => \four_bit|somasub|Add0~25\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LCCOMB_X44_Y28_N18
\four_bit|mux1|y[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[7]~7_combout\ = (\bloco_controle|ini~combout\ & ((\a~combout\(7)))) # (!\bloco_controle|ini~combout\ & (\four_bit|somasub|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|ini~combout\,
	datac => \four_bit|somasub|Add0~24_combout\,
	datad => \a~combout\(7),
	combout => \four_bit|mux1|y[7]~7_combout\);

-- Location: LCFF_X44_Y28_N19
\four_bit|regA|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[7]~7_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(7));

-- Location: LCCOMB_X45_Y29_N16
\four_bit|geraAz|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraAz|Equal0~1_combout\ = (!\four_bit|regA|q\(4) & (!\four_bit|regA|q\(6) & (!\four_bit|regA|q\(5) & !\four_bit|regA|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(4),
	datab => \four_bit|regA|q\(6),
	datac => \four_bit|regA|q\(5),
	datad => \four_bit|regA|q\(7),
	combout => \four_bit|geraAz|Equal0~1_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LCCOMB_X44_Y28_N14
\four_bit|somasub|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~26_combout\ = (\b~combout\(8)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(8),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~26_combout\);

-- Location: LCCOMB_X43_Y28_N2
\four_bit|somasub|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~27_combout\ = (\four_bit|mux2|y[8]~8_combout\ & ((\four_bit|somasub|Add0~26_combout\ & (\four_bit|somasub|Add0~25\ & VCC)) # (!\four_bit|somasub|Add0~26_combout\ & (!\four_bit|somasub|Add0~25\)))) # (!\four_bit|mux2|y[8]~8_combout\ 
-- & ((\four_bit|somasub|Add0~26_combout\ & (!\four_bit|somasub|Add0~25\)) # (!\four_bit|somasub|Add0~26_combout\ & ((\four_bit|somasub|Add0~25\) # (GND)))))
-- \four_bit|somasub|Add0~28\ = CARRY((\four_bit|mux2|y[8]~8_combout\ & (!\four_bit|somasub|Add0~26_combout\ & !\four_bit|somasub|Add0~25\)) # (!\four_bit|mux2|y[8]~8_combout\ & ((!\four_bit|somasub|Add0~25\) # (!\four_bit|somasub|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[8]~8_combout\,
	datab => \four_bit|somasub|Add0~26_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~25\,
	combout => \four_bit|somasub|Add0~27_combout\,
	cout => \four_bit|somasub|Add0~28\);

-- Location: LCCOMB_X43_Y28_N22
\four_bit|mux1|y[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[8]~8_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(8))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datac => \a~combout\(8),
	datad => \four_bit|somasub|Add0~27_combout\,
	combout => \four_bit|mux1|y[8]~8_combout\);

-- Location: LCFF_X43_Y28_N23
\four_bit|regA|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[8]~8_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(8));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LCFF_X43_Y28_N15
\four_bit|regP|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|somasub|Add0~45_combout\,
	aclr => \bloco_controle|ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(14));

-- Location: LCCOMB_X44_Y28_N22
\four_bit|mux2|y[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[14]~14_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(14))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regA|q\(14),
	datac => \four_bit|regP|q\(14),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[14]~14_combout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LCCOMB_X42_Y28_N28
\four_bit|somasub|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~41_combout\ = (\b~combout\(13)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(13),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~41_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LCCOMB_X44_Y29_N0
\four_bit|somasub|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~38_combout\ = (\b~combout\(12)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(12),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~38_combout\);

-- Location: LCCOMB_X44_Y28_N8
\four_bit|somasub|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~29_combout\ = (\b~combout\(9)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(9),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~29_combout\);

-- Location: LCCOMB_X43_Y28_N4
\four_bit|somasub|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~30_combout\ = ((\four_bit|mux2|y[9]~9_combout\ $ (\four_bit|somasub|Add0~29_combout\ $ (!\four_bit|somasub|Add0~28\)))) # (GND)
-- \four_bit|somasub|Add0~31\ = CARRY((\four_bit|mux2|y[9]~9_combout\ & ((\four_bit|somasub|Add0~29_combout\) # (!\four_bit|somasub|Add0~28\))) # (!\four_bit|mux2|y[9]~9_combout\ & (\four_bit|somasub|Add0~29_combout\ & !\four_bit|somasub|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[9]~9_combout\,
	datab => \four_bit|somasub|Add0~29_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~28\,
	combout => \four_bit|somasub|Add0~30_combout\,
	cout => \four_bit|somasub|Add0~31\);

-- Location: LCCOMB_X43_Y28_N6
\four_bit|somasub|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~33_combout\ = (\four_bit|somasub|Add0~32_combout\ & ((\four_bit|mux2|y[10]~10_combout\ & (\four_bit|somasub|Add0~31\ & VCC)) # (!\four_bit|mux2|y[10]~10_combout\ & (!\four_bit|somasub|Add0~31\)))) # 
-- (!\four_bit|somasub|Add0~32_combout\ & ((\four_bit|mux2|y[10]~10_combout\ & (!\four_bit|somasub|Add0~31\)) # (!\four_bit|mux2|y[10]~10_combout\ & ((\four_bit|somasub|Add0~31\) # (GND)))))
-- \four_bit|somasub|Add0~34\ = CARRY((\four_bit|somasub|Add0~32_combout\ & (!\four_bit|mux2|y[10]~10_combout\ & !\four_bit|somasub|Add0~31\)) # (!\four_bit|somasub|Add0~32_combout\ & ((!\four_bit|somasub|Add0~31\) # (!\four_bit|mux2|y[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|somasub|Add0~32_combout\,
	datab => \four_bit|mux2|y[10]~10_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~31\,
	combout => \four_bit|somasub|Add0~33_combout\,
	cout => \four_bit|somasub|Add0~34\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LCCOMB_X44_Y28_N30
\four_bit|mux1|y[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[10]~10_combout\ = (\bloco_controle|ini~combout\ & ((\a~combout\(10)))) # (!\bloco_controle|ini~combout\ & (\four_bit|somasub|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|ini~combout\,
	datac => \four_bit|somasub|Add0~33_combout\,
	datad => \a~combout\(10),
	combout => \four_bit|mux1|y[10]~10_combout\);

-- Location: LCFF_X44_Y28_N31
\four_bit|regA|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[10]~10_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(10));

-- Location: LCCOMB_X44_Y28_N12
\four_bit|mux2|y[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[10]~10_combout\ = (\bloco_controle|dec~combout\ & ((\four_bit|regA|q\(10)))) # (!\bloco_controle|dec~combout\ & (\four_bit|regP|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regP|q\(10),
	datab => \four_bit|regA|q\(10),
	datac => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[10]~10_combout\);

-- Location: LCCOMB_X43_Y28_N8
\four_bit|somasub|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~36_combout\ = ((\four_bit|somasub|Add0~35_combout\ $ (\four_bit|mux2|y[11]~11_combout\ $ (!\four_bit|somasub|Add0~34\)))) # (GND)
-- \four_bit|somasub|Add0~37\ = CARRY((\four_bit|somasub|Add0~35_combout\ & ((\four_bit|mux2|y[11]~11_combout\) # (!\four_bit|somasub|Add0~34\))) # (!\four_bit|somasub|Add0~35_combout\ & (\four_bit|mux2|y[11]~11_combout\ & !\four_bit|somasub|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|somasub|Add0~35_combout\,
	datab => \four_bit|mux2|y[11]~11_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~34\,
	combout => \four_bit|somasub|Add0~36_combout\,
	cout => \four_bit|somasub|Add0~37\);

-- Location: LCFF_X43_Y28_N9
\four_bit|regP|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|somasub|Add0~36_combout\,
	aclr => \bloco_controle|ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(11));

-- Location: LCCOMB_X44_Y28_N10
\four_bit|mux2|y[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[11]~11_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(11))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(11),
	datac => \four_bit|regP|q\(11),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[11]~11_combout\);

-- Location: LCCOMB_X43_Y28_N10
\four_bit|somasub|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~39_combout\ = (\four_bit|mux2|y[12]~12_combout\ & ((\four_bit|somasub|Add0~38_combout\ & (\four_bit|somasub|Add0~37\ & VCC)) # (!\four_bit|somasub|Add0~38_combout\ & (!\four_bit|somasub|Add0~37\)))) # 
-- (!\four_bit|mux2|y[12]~12_combout\ & ((\four_bit|somasub|Add0~38_combout\ & (!\four_bit|somasub|Add0~37\)) # (!\four_bit|somasub|Add0~38_combout\ & ((\four_bit|somasub|Add0~37\) # (GND)))))
-- \four_bit|somasub|Add0~40\ = CARRY((\four_bit|mux2|y[12]~12_combout\ & (!\four_bit|somasub|Add0~38_combout\ & !\four_bit|somasub|Add0~37\)) # (!\four_bit|mux2|y[12]~12_combout\ & ((!\four_bit|somasub|Add0~37\) # (!\four_bit|somasub|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[12]~12_combout\,
	datab => \four_bit|somasub|Add0~38_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~37\,
	combout => \four_bit|somasub|Add0~39_combout\,
	cout => \four_bit|somasub|Add0~40\);

-- Location: LCCOMB_X43_Y28_N12
\four_bit|somasub|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~42_combout\ = ((\four_bit|mux2|y[13]~13_combout\ $ (\four_bit|somasub|Add0~41_combout\ $ (!\four_bit|somasub|Add0~40\)))) # (GND)
-- \four_bit|somasub|Add0~43\ = CARRY((\four_bit|mux2|y[13]~13_combout\ & ((\four_bit|somasub|Add0~41_combout\) # (!\four_bit|somasub|Add0~40\))) # (!\four_bit|mux2|y[13]~13_combout\ & (\four_bit|somasub|Add0~41_combout\ & !\four_bit|somasub|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[13]~13_combout\,
	datab => \four_bit|somasub|Add0~41_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~40\,
	combout => \four_bit|somasub|Add0~42_combout\,
	cout => \four_bit|somasub|Add0~43\);

-- Location: LCCOMB_X43_Y28_N14
\four_bit|somasub|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~45_combout\ = (\four_bit|somasub|Add0~44_combout\ & ((\four_bit|mux2|y[14]~14_combout\ & (\four_bit|somasub|Add0~43\ & VCC)) # (!\four_bit|mux2|y[14]~14_combout\ & (!\four_bit|somasub|Add0~43\)))) # 
-- (!\four_bit|somasub|Add0~44_combout\ & ((\four_bit|mux2|y[14]~14_combout\ & (!\four_bit|somasub|Add0~43\)) # (!\four_bit|mux2|y[14]~14_combout\ & ((\four_bit|somasub|Add0~43\) # (GND)))))
-- \four_bit|somasub|Add0~46\ = CARRY((\four_bit|somasub|Add0~44_combout\ & (!\four_bit|mux2|y[14]~14_combout\ & !\four_bit|somasub|Add0~43\)) # (!\four_bit|somasub|Add0~44_combout\ & ((!\four_bit|somasub|Add0~43\) # (!\four_bit|mux2|y[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|somasub|Add0~44_combout\,
	datab => \four_bit|mux2|y[14]~14_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~43\,
	combout => \four_bit|somasub|Add0~45_combout\,
	cout => \four_bit|somasub|Add0~46\);

-- Location: LCCOMB_X44_Y28_N0
\four_bit|mux1|y[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[14]~14_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(14))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|ini~combout\,
	datac => \a~combout\(14),
	datad => \four_bit|somasub|Add0~45_combout\,
	combout => \four_bit|mux1|y[14]~14_combout\);

-- Location: LCFF_X44_Y28_N1
\four_bit|regA|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[14]~14_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(14));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LCCOMB_X43_Y28_N28
\four_bit|mux1|y[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[13]~13_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(13))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(13),
	datac => \bloco_controle|ini~combout\,
	datad => \four_bit|somasub|Add0~42_combout\,
	combout => \four_bit|mux1|y[13]~13_combout\);

-- Location: LCFF_X43_Y28_N29
\four_bit|regA|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[13]~13_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(13));

-- Location: LCCOMB_X43_Y28_N26
\four_bit|mux1|y[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[12]~12_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(12))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datac => \bloco_controle|ini~combout\,
	datad => \four_bit|somasub|Add0~39_combout\,
	combout => \four_bit|mux1|y[12]~12_combout\);

-- Location: LCFF_X43_Y28_N27
\four_bit|regA|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[12]~12_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(12));

-- Location: LCCOMB_X44_Y28_N20
\four_bit|geraAz|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraAz|Equal0~3_combout\ = (!\four_bit|regA|q\(15) & (!\four_bit|regA|q\(14) & (!\four_bit|regA|q\(13) & !\four_bit|regA|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(15),
	datab => \four_bit|regA|q\(14),
	datac => \four_bit|regA|q\(13),
	datad => \four_bit|regA|q\(12),
	combout => \four_bit|geraAz|Equal0~3_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LCCOMB_X44_Y28_N24
\four_bit|mux1|y[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[11]~11_combout\ = (\bloco_controle|ini~combout\ & (\a~combout\(11))) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|ini~combout\,
	datac => \a~combout\(11),
	datad => \four_bit|somasub|Add0~36_combout\,
	combout => \four_bit|mux1|y[11]~11_combout\);

-- Location: LCFF_X44_Y28_N25
\four_bit|regA|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|mux1|y[11]~11_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|q\(11));

-- Location: LCCOMB_X45_Y28_N24
\four_bit|geraAz|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraAz|Equal0~2_combout\ = (!\four_bit|regA|q\(10) & !\four_bit|regA|q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \four_bit|regA|q\(10),
	datad => \four_bit|regA|q\(11),
	combout => \four_bit|geraAz|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y28_N2
\four_bit|geraAz|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|geraAz|Equal0~4_combout\ = (!\four_bit|regA|q\(9) & (!\four_bit|regA|q\(8) & (\four_bit|geraAz|Equal0~3_combout\ & \four_bit|geraAz|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(9),
	datab => \four_bit|regA|q\(8),
	datac => \four_bit|geraAz|Equal0~3_combout\,
	datad => \four_bit|geraAz|Equal0~2_combout\,
	combout => \four_bit|geraAz|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y29_N18
\bloco_controle|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|process_0~0_combout\ = (\four_bit|geraBz|Equal0~4_combout\) # ((\four_bit|geraAz|Equal0~0_combout\ & (\four_bit|geraAz|Equal0~1_combout\ & \four_bit|geraAz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|geraAz|Equal0~0_combout\,
	datab => \four_bit|geraBz|Equal0~4_combout\,
	datac => \four_bit|geraAz|Equal0~1_combout\,
	datad => \four_bit|geraAz|Equal0~4_combout\,
	combout => \bloco_controle|process_0~0_combout\);

-- Location: LCCOMB_X45_Y29_N22
\bloco_controle|state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~13_combout\ = (\bloco_controle|state.S2~regout\ & !\bloco_controle|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S2~regout\,
	datad => \bloco_controle|process_0~0_combout\,
	combout => \bloco_controle|state~13_combout\);

-- Location: LCFF_X45_Y29_N23
\bloco_controle|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_controle|state~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S3~regout\);

-- Location: LCFF_X44_Y29_N1
\bloco_controle|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \bloco_controle|state.S3~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S4~regout\);

-- Location: LCCOMB_X44_Y29_N10
\bloco_controle|CA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|CA~1_combout\ = (\bloco_controle|state.S1~regout\) # (\bloco_controle|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S1~regout\,
	datad => \bloco_controle|state.S4~regout\,
	combout => \bloco_controle|CA~1_combout\);

-- Location: LCFF_X44_Y29_N29
\bloco_controle|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \bloco_controle|CA~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S2~regout\);

-- Location: LCCOMB_X44_Y29_N8
\bloco_controle|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~11_combout\ = (\bloco_controle|state.S2~regout\ & \bloco_controle|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S2~regout\,
	datad => \bloco_controle|process_0~0_combout\,
	combout => \bloco_controle|state~11_combout\);

-- Location: LCFF_X44_Y29_N9
\bloco_controle|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \bloco_controle|state~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S5~regout\);

-- Location: LCCOMB_X45_Y29_N20
\bloco_controle|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector3~0_combout\ = (!\bloco_controle|state.S5~regout\ & ((\inicio~combout\) # (\bloco_controle|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio~combout\,
	datac => \bloco_controle|state.S0~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_controle|Selector3~0_combout\);

-- Location: LCFF_X45_Y29_N21
\bloco_controle|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_controle|Selector3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S0~regout\);

-- Location: LCCOMB_X45_Y29_N26
\bloco_controle|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr3~0_combout\ = (\bloco_controle|state.S5~regout\) # (!\bloco_controle|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S0~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_controle|WideOr3~0_combout\);

-- Location: LCCOMB_X44_Y29_N20
\bloco_controle|pronto\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|pronto~combout\ = (\bloco_controle|WideOr3~0_combout\ & ((\bloco_controle|state.S5~regout\))) # (!\bloco_controle|WideOr3~0_combout\ & (\bloco_controle|pronto~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|pronto~combout\,
	datac => \bloco_controle|state.S5~regout\,
	datad => \bloco_controle|WideOr3~0_combout\,
	combout => \bloco_controle|pronto~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCFF_X43_Y29_N5
\four_bit|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~3_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(0));

-- Location: LCFF_X43_Y29_N13
\four_bit|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~9_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(2));

-- Location: LCFF_X43_Y29_N11
\four_bit|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~12_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(3));

-- Location: LCFF_X43_Y29_N3
\four_bit|regP|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~18_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(5));

-- Location: LCFF_X43_Y29_N9
\four_bit|regP|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~21_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(6));

-- Location: LCFF_X43_Y28_N19
\four_bit|regP|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~24_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(7));

-- Location: LCFF_X43_Y28_N25
\four_bit|regP|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~27_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(8));

-- Location: LCFF_X43_Y28_N5
\four_bit|regP|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|somasub|Add0~30_combout\,
	aclr => \bloco_controle|ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(9));

-- Location: LCFF_X43_Y28_N1
\four_bit|regP|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \four_bit|somasub|Add0~33_combout\,
	aclr => \bloco_controle|ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(10));

-- Location: LCFF_X43_Y28_N11
\four_bit|regP|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|somasub|Add0~39_combout\,
	aclr => \bloco_controle|ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(12));

-- Location: LCFF_X43_Y28_N13
\four_bit|regP|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|somasub|Add0~42_combout\,
	aclr => \bloco_controle|ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(13));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LCCOMB_X42_Y28_N16
\four_bit|somasub|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~47_combout\ = (\b~combout\(15)) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(15),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~47_combout\);

-- Location: LCCOMB_X43_Y28_N16
\four_bit|somasub|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~48_combout\ = \four_bit|mux2|y[15]~15_combout\ $ (\four_bit|somasub|Add0~46\ $ (!\four_bit|somasub|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[15]~15_combout\,
	datad => \four_bit|somasub|Add0~47_combout\,
	cin => \four_bit|somasub|Add0~46\,
	combout => \four_bit|somasub|Add0~48_combout\);

-- Location: LCFF_X43_Y28_N17
\four_bit|regP|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \four_bit|somasub|Add0~48_combout\,
	aclr => \bloco_controle|ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regP|q\(15));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pronto~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bloco_controle|pronto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(4));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(5));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(6));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(7));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(8));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(9));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(10));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(11));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(12));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(13));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(14));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \four_bit|regP|q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(15));
END structure;


