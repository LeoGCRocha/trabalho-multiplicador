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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/09/2020 21:45:41"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	multiplier IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	inicio : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplier;

-- Design Ports Information
-- pronto	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicio	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_inicio : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \four_bit|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~5_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[2]~2_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~11_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~14_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[5]~5_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[6]~6_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~23_combout\ : std_logic;
SIGNAL \four_bit|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[0]~0_combout\ : std_logic;
SIGNAL \bloco_controle|WideOr2~0_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[6]~6_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \pronto~output_o\ : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \bloco_controle|Selector3~0_combout\ : std_logic;
SIGNAL \bloco_controle|state.S0~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \bloco_controle|state.S0~q\ : std_logic;
SIGNAL \inicio~input_o\ : std_logic;
SIGNAL \bloco_controle|state~12_combout\ : std_logic;
SIGNAL \bloco_controle|state.S1~q\ : std_logic;
SIGNAL \bloco_controle|state~13_combout\ : std_logic;
SIGNAL \bloco_controle|state.S3~q\ : std_logic;
SIGNAL \bloco_controle|state.S4~q\ : std_logic;
SIGNAL \bloco_controle|CA~1_combout\ : std_logic;
SIGNAL \bloco_controle|state.S2~q\ : std_logic;
SIGNAL \bloco_controle|WideOr1~combout\ : std_logic;
SIGNAL \bloco_controle|dec~combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~8_combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \four_bit|somasub|Add0~0_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~2_cout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~4\ : std_logic;
SIGNAL \four_bit|somasub|Add0~6_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \four_bit|mux1|y[1]~1_combout\ : std_logic;
SIGNAL \bloco_controle|WideOr0~0_combout\ : std_logic;
SIGNAL \bloco_controle|CA~combout\ : std_logic;
SIGNAL \four_bit|mux2|y[1]~1_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~7\ : std_logic;
SIGNAL \four_bit|somasub|Add0~9_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \four_bit|mux1|y[2]~2_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[3]~3_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~10\ : std_logic;
SIGNAL \four_bit|somasub|Add0~12_combout\ : std_logic;
SIGNAL \bloco_controle|WideOr0~combout\ : std_logic;
SIGNAL \bloco_controle|ini~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \four_bit|mux1|y[3]~3_combout\ : std_logic;
SIGNAL \four_bit|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \four_bit|regB|q[6]~feeder_combout\ : std_logic;
SIGNAL \four_bit|geraBz|Equal0~1_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \four_bit|somasub|Add0~17_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~13\ : std_logic;
SIGNAL \four_bit|somasub|Add0~15_combout\ : std_logic;
SIGNAL \bloco_controle|CP~combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \four_bit|mux1|y[4]~4_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[4]~4_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~16\ : std_logic;
SIGNAL \four_bit|somasub|Add0~18_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[5]~5_combout\ : std_logic;
SIGNAL \four_bit|mux2|y[7]~7_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~20_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~19\ : std_logic;
SIGNAL \four_bit|somasub|Add0~22\ : std_logic;
SIGNAL \four_bit|somasub|Add0~24_combout\ : std_logic;
SIGNAL \four_bit|mux1|y[7]~7_combout\ : std_logic;
SIGNAL \four_bit|geraAz|Equal0~1_combout\ : std_logic;
SIGNAL \bloco_controle|process_0~0_combout\ : std_logic;
SIGNAL \bloco_controle|state~11_combout\ : std_logic;
SIGNAL \bloco_controle|state.S5~q\ : std_logic;
SIGNAL \bloco_controle|WideOr3~0_combout\ : std_logic;
SIGNAL \bloco_controle|pronto~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \four_bit|somasub|Add0~3_combout\ : std_logic;
SIGNAL \four_bit|somasub|Add0~21_combout\ : std_logic;
SIGNAL \four_bit|regP|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \four_bit|regA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \four_bit|regB|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \bloco_controle|ALT_INV_ini~combout\ : std_logic;

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

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\bloco_controle|ALT_INV_ini~combout\ <= NOT \bloco_controle|ini~combout\;

-- Location: FF_X22_Y1_N15
\four_bit|regA|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|mux1|y[0]~0_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regA|q\(0));

-- Location: LCCOMB_X22_Y1_N12
\four_bit|mux2|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[0]~0_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(0))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|dec~combout\,
	datac => \four_bit|regA|q\(0),
	datad => \four_bit|regP|q\(0),
	combout => \four_bit|mux2|y[0]~0_combout\);

-- Location: LCCOMB_X22_Y1_N2
\four_bit|somasub|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~5_combout\ = (\b[1]~input_o\) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~5_combout\);

-- Location: LCCOMB_X23_Y1_N26
\four_bit|mux2|y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[2]~2_combout\ = (\bloco_controle|dec~combout\ & ((\four_bit|regA|q\(2)))) # (!\bloco_controle|dec~combout\ & (\four_bit|regP|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regP|q\(2),
	datab => \bloco_controle|dec~combout\,
	datad => \four_bit|regA|q\(2),
	combout => \four_bit|mux2|y[2]~2_combout\);

-- Location: LCCOMB_X22_Y1_N26
\four_bit|somasub|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~11_combout\ = (\b[3]~input_o\) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~11_combout\);

-- Location: LCCOMB_X22_Y1_N28
\four_bit|somasub|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~14_combout\ = (\bloco_controle|dec~combout\) # (\b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|dec~combout\,
	datad => \b[4]~input_o\,
	combout => \four_bit|somasub|Add0~14_combout\);

-- Location: LCCOMB_X24_Y1_N30
\four_bit|mux2|y[5]~5\ : cycloneive_lcell_comb
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

-- Location: FF_X24_Y1_N11
\four_bit|regA|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|mux1|y[6]~6_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regA|q\(6));

-- Location: LCCOMB_X24_Y1_N28
\four_bit|mux2|y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[6]~6_combout\ = (\bloco_controle|dec~combout\ & (\four_bit|regA|q\(6))) # (!\bloco_controle|dec~combout\ & ((\four_bit|regP|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(6),
	datac => \bloco_controle|dec~combout\,
	datad => \four_bit|regP|q\(6),
	combout => \four_bit|mux2|y[6]~6_combout\);

-- Location: LCCOMB_X24_Y1_N2
\four_bit|somasub|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~23_combout\ = (\bloco_controle|dec~combout\) # (\b[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|dec~combout\,
	datab => \b[7]~input_o\,
	combout => \four_bit|somasub|Add0~23_combout\);

-- Location: FF_X22_Y1_N9
\four_bit|regB|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[0]~input_o\,
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regB|q\(0));

-- Location: FF_X22_Y1_N31
\four_bit|regB|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[1]~input_o\,
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regB|q\(1));

-- Location: FF_X22_Y1_N17
\four_bit|regB|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[2]~input_o\,
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regB|q\(2));

-- Location: FF_X22_Y1_N11
\four_bit|regB|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[3]~input_o\,
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regB|q\(3));

-- Location: LCCOMB_X22_Y1_N10
\four_bit|geraBz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|geraBz|Equal0~0_combout\ = (!\four_bit|regB|q\(1) & (!\four_bit|regB|q\(2) & (!\four_bit|regB|q\(3) & !\four_bit|regB|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(1),
	datab => \four_bit|regB|q\(2),
	datac => \four_bit|regB|q\(3),
	datad => \four_bit|regB|q\(0),
	combout => \four_bit|geraBz|Equal0~0_combout\);

-- Location: FF_X24_Y1_N13
\four_bit|regB|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[4]~input_o\,
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regB|q\(4));

-- Location: LCCOMB_X22_Y1_N14
\four_bit|mux1|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[0]~0_combout\ = (\bloco_controle|ini~combout\ & ((\a[0]~input_o\))) # (!\bloco_controle|ini~combout\ & (\four_bit|somasub|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|somasub|Add0~3_combout\,
	datab => \bloco_controle|ini~combout\,
	datac => \a[0]~input_o\,
	combout => \four_bit|mux1|y[0]~0_combout\);

-- Location: LCCOMB_X21_Y1_N30
\bloco_controle|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr2~0_combout\ = (\bloco_controle|state.S1~q\) # ((\bloco_controle|state.S2~q\) # (\bloco_controle|state.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~q\,
	datac => \bloco_controle|state.S2~q\,
	datad => \bloco_controle|state.S5~q\,
	combout => \bloco_controle|WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y1_N10
\four_bit|mux1|y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[6]~6_combout\ = (\bloco_controle|ini~combout\ & (\a[6]~input_o\)) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|ini~combout\,
	datac => \a[6]~input_o\,
	datad => \four_bit|somasub|Add0~21_combout\,
	combout => \four_bit|mux1|y[6]~6_combout\);

-- Location: IOIBUF_X30_Y0_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOOBUF_X13_Y0_N16
\pronto~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|pronto~combout\,
	devoe => ww_devoe,
	o => \pronto~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \four_bit|regP|q\(0),
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \four_bit|regP|q\(1),
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \four_bit|regP|q\(2),
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \four_bit|regP|q\(3),
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \four_bit|regP|q\(4),
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \four_bit|regP|q\(5),
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \four_bit|regP|q\(6),
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\saida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \four_bit|regP|q\(7),
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: LCCOMB_X21_Y1_N24
\bloco_controle|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector3~0_combout\ = (!\bloco_controle|state.S5~q\ & ((\inicio~input_o\) # (\bloco_controle|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inicio~input_o\,
	datab => \bloco_controle|state.S0~q\,
	datad => \bloco_controle|state.S5~q\,
	combout => \bloco_controle|Selector3~0_combout\);

-- Location: LCCOMB_X21_Y1_N10
\bloco_controle|state.S0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|state.S0~feeder_combout\ = \bloco_controle|Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|Selector3~0_combout\,
	combout => \bloco_controle|state.S0~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X21_Y1_N11
\bloco_controle|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|state.S0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|state.S0~q\);

-- Location: IOIBUF_X5_Y0_N15
\inicio~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicio,
	o => \inicio~input_o\);

-- Location: LCCOMB_X21_Y1_N8
\bloco_controle|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|state~12_combout\ = (!\bloco_controle|state.S0~q\ & \inicio~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S0~q\,
	datad => \inicio~input_o\,
	combout => \bloco_controle|state~12_combout\);

-- Location: FF_X21_Y1_N25
\bloco_controle|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloco_controle|state~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|state.S1~q\);

-- Location: LCCOMB_X21_Y1_N22
\bloco_controle|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|state~13_combout\ = (!\bloco_controle|process_0~0_combout\ & \bloco_controle|state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|process_0~0_combout\,
	datac => \bloco_controle|state.S2~q\,
	combout => \bloco_controle|state~13_combout\);

-- Location: FF_X21_Y1_N23
\bloco_controle|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|state~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|state.S3~q\);

-- Location: FF_X21_Y1_N29
\bloco_controle|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \bloco_controle|state.S3~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|state.S4~q\);

-- Location: LCCOMB_X21_Y1_N6
\bloco_controle|CA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|CA~1_combout\ = (\bloco_controle|state.S1~q\) # (\bloco_controle|state.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S1~q\,
	datad => \bloco_controle|state.S4~q\,
	combout => \bloco_controle|CA~1_combout\);

-- Location: FF_X21_Y1_N9
\bloco_controle|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \bloco_controle|CA~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|state.S2~q\);

-- Location: LCCOMB_X21_Y1_N4
\bloco_controle|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr1~combout\ = (\bloco_controle|state.S1~q\) # ((\bloco_controle|state.S3~q\) # (\bloco_controle|state.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~q\,
	datac => \bloco_controle|state.S3~q\,
	datad => \bloco_controle|state.S5~q\,
	combout => \bloco_controle|WideOr1~combout\);

-- Location: LCCOMB_X21_Y1_N16
\bloco_controle|dec\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|dec~combout\ = (\bloco_controle|WideOr1~combout\ & (\bloco_controle|dec~combout\)) # (!\bloco_controle|WideOr1~combout\ & ((\bloco_controle|state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|dec~combout\,
	datac => \bloco_controle|WideOr1~combout\,
	datad => \bloco_controle|state.S4~q\,
	combout => \bloco_controle|dec~combout\);

-- Location: LCCOMB_X22_Y1_N22
\four_bit|somasub|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~8_combout\ = (\b[2]~input_o\) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~8_combout\);

-- Location: IOIBUF_X18_Y0_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N20
\four_bit|somasub|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~0_combout\ = (\b[0]~input_o\ & !\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datac => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~0_combout\);

-- Location: LCCOMB_X23_Y1_N4
\four_bit|somasub|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~2_cout\ = CARRY(\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|dec~combout\,
	datad => VCC,
	cout => \four_bit|somasub|Add0~2_cout\);

-- Location: LCCOMB_X23_Y1_N6
\four_bit|somasub|Add0~3\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X23_Y1_N8
\four_bit|somasub|Add0~6\ : cycloneive_lcell_comb
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

-- Location: IOIBUF_X34_Y12_N22
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X22_Y1_N4
\four_bit|mux1|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[1]~1_combout\ = (\bloco_controle|ini~combout\ & ((\a[1]~input_o\))) # (!\bloco_controle|ini~combout\ & (\four_bit|somasub|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datab => \four_bit|somasub|Add0~6_combout\,
	datac => \a[1]~input_o\,
	combout => \four_bit|mux1|y[1]~1_combout\);

-- Location: LCCOMB_X21_Y1_N26
\bloco_controle|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr0~0_combout\ = (!\bloco_controle|state.S3~q\ & !\bloco_controle|state.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S3~q\,
	datad => \bloco_controle|state.S5~q\,
	combout => \bloco_controle|WideOr0~0_combout\);

-- Location: LCCOMB_X21_Y1_N2
\bloco_controle|CA\ : cycloneive_lcell_comb
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

-- Location: FF_X22_Y1_N5
\four_bit|regA|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|mux1|y[1]~1_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regA|q\(1));

-- Location: LCCOMB_X23_Y1_N24
\four_bit|mux2|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[1]~1_combout\ = (\bloco_controle|dec~combout\ & ((\four_bit|regA|q\(1)))) # (!\bloco_controle|dec~combout\ & (\four_bit|regP|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regP|q\(1),
	datab => \four_bit|regA|q\(1),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[1]~1_combout\);

-- Location: LCCOMB_X23_Y1_N10
\four_bit|somasub|Add0~9\ : cycloneive_lcell_comb
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

-- Location: IOIBUF_X34_Y12_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\four_bit|mux1|y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[2]~2_combout\ = (\bloco_controle|ini~combout\ & ((\a[2]~input_o\))) # (!\bloco_controle|ini~combout\ & (\four_bit|somasub|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|ini~combout\,
	datab => \four_bit|somasub|Add0~9_combout\,
	datad => \a[2]~input_o\,
	combout => \four_bit|mux1|y[2]~2_combout\);

-- Location: FF_X22_Y1_N25
\four_bit|regA|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|mux1|y[2]~2_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regA|q\(2));

-- Location: LCCOMB_X23_Y1_N2
\four_bit|mux2|y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[3]~3_combout\ = (\bloco_controle|dec~combout\ & ((\four_bit|regA|q\(3)))) # (!\bloco_controle|dec~combout\ & (\four_bit|regP|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regP|q\(3),
	datab => \four_bit|regA|q\(3),
	datad => \bloco_controle|dec~combout\,
	combout => \four_bit|mux2|y[3]~3_combout\);

-- Location: LCCOMB_X23_Y1_N12
\four_bit|somasub|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~12_combout\ = ((\four_bit|somasub|Add0~11_combout\ $ (\four_bit|mux2|y[3]~3_combout\ $ (!\four_bit|somasub|Add0~10\)))) # (GND)
-- \four_bit|somasub|Add0~13\ = CARRY((\four_bit|somasub|Add0~11_combout\ & ((\four_bit|mux2|y[3]~3_combout\) # (!\four_bit|somasub|Add0~10\))) # (!\four_bit|somasub|Add0~11_combout\ & (\four_bit|mux2|y[3]~3_combout\ & !\four_bit|somasub|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|somasub|Add0~11_combout\,
	datab => \four_bit|mux2|y[3]~3_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~10\,
	combout => \four_bit|somasub|Add0~12_combout\,
	cout => \four_bit|somasub|Add0~13\);

-- Location: LCCOMB_X21_Y1_N14
\bloco_controle|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr0~combout\ = (\bloco_controle|state.S5~q\) # ((\bloco_controle|state.S3~q\) # (\bloco_controle|state.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S5~q\,
	datac => \bloco_controle|state.S3~q\,
	datad => \bloco_controle|state.S4~q\,
	combout => \bloco_controle|WideOr0~combout\);

-- Location: LCCOMB_X21_Y1_N0
\bloco_controle|ini\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|ini~combout\ = (\bloco_controle|WideOr0~combout\ & (\bloco_controle|ini~combout\)) # (!\bloco_controle|WideOr0~combout\ & ((\bloco_controle|state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|ini~combout\,
	datac => \bloco_controle|state.S1~q\,
	datad => \bloco_controle|WideOr0~combout\,
	combout => \bloco_controle|ini~combout\);

-- Location: IOIBUF_X30_Y0_N1
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X23_Y1_N30
\four_bit|mux1|y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[3]~3_combout\ = (\bloco_controle|ini~combout\ & ((\a[3]~input_o\))) # (!\bloco_controle|ini~combout\ & (\four_bit|somasub|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|somasub|Add0~12_combout\,
	datac => \bloco_controle|ini~combout\,
	datad => \a[3]~input_o\,
	combout => \four_bit|mux1|y[3]~3_combout\);

-- Location: FF_X23_Y1_N31
\four_bit|regA|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|mux1|y[3]~3_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regA|q\(3));

-- Location: LCCOMB_X22_Y1_N0
\four_bit|geraAz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|geraAz|Equal0~0_combout\ = (!\four_bit|regA|q\(0) & (!\four_bit|regA|q\(2) & (!\four_bit|regA|q\(1) & !\four_bit|regA|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(0),
	datab => \four_bit|regA|q\(2),
	datac => \four_bit|regA|q\(1),
	datad => \four_bit|regA|q\(3),
	combout => \four_bit|geraAz|Equal0~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: FF_X24_Y1_N19
\four_bit|regB|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[5]~input_o\,
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regB|q\(5));

-- Location: IOIBUF_X32_Y0_N8
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: FF_X24_Y1_N23
\four_bit|regB|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[7]~input_o\,
	sload => VCC,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regB|q\(7));

-- Location: IOIBUF_X32_Y0_N22
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X24_Y1_N0
\four_bit|regB|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|regB|q[6]~feeder_combout\ = \b[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b[6]~input_o\,
	combout => \four_bit|regB|q[6]~feeder_combout\);

-- Location: FF_X24_Y1_N1
\four_bit|regB|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|regB|q[6]~feeder_combout\,
	ena => \bloco_controle|ini~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regB|q\(6));

-- Location: LCCOMB_X24_Y1_N22
\four_bit|geraBz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|geraBz|Equal0~1_combout\ = (!\four_bit|regB|q\(4) & (!\four_bit|regB|q\(5) & (!\four_bit|regB|q\(7) & !\four_bit|regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(4),
	datab => \four_bit|regB|q\(5),
	datac => \four_bit|regB|q\(7),
	datad => \four_bit|regB|q\(6),
	combout => \four_bit|geraBz|Equal0~1_combout\);

-- Location: IOIBUF_X34_Y12_N1
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X22_Y1_N18
\four_bit|somasub|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~17_combout\ = (\b[5]~input_o\) # (\bloco_controle|dec~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datac => \bloco_controle|dec~combout\,
	combout => \four_bit|somasub|Add0~17_combout\);

-- Location: LCCOMB_X23_Y1_N14
\four_bit|somasub|Add0~15\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X21_Y1_N20
\bloco_controle|CP\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|CP~combout\ = (\bloco_controle|WideOr2~0_combout\ & ((\bloco_controle|CP~combout\))) # (!\bloco_controle|WideOr2~0_combout\ & (\bloco_controle|state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|WideOr2~0_combout\,
	datac => \bloco_controle|state.S3~q\,
	datad => \bloco_controle|CP~combout\,
	combout => \bloco_controle|CP~combout\);

-- Location: FF_X23_Y1_N15
\four_bit|regP|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|somasub|Add0~15_combout\,
	clrn => \bloco_controle|ALT_INV_ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regP|q\(4));

-- Location: IOIBUF_X34_Y12_N8
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X23_Y1_N0
\four_bit|mux1|y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[4]~4_combout\ = (\bloco_controle|ini~combout\ & (\a[4]~input_o\)) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|ini~combout\,
	datac => \a[4]~input_o\,
	datad => \four_bit|somasub|Add0~15_combout\,
	combout => \four_bit|mux1|y[4]~4_combout\);

-- Location: FF_X23_Y1_N1
\four_bit|regA|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|mux1|y[4]~4_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regA|q\(4));

-- Location: LCCOMB_X23_Y1_N28
\four_bit|mux2|y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[4]~4_combout\ = (\bloco_controle|dec~combout\ & ((\four_bit|regA|q\(4)))) # (!\bloco_controle|dec~combout\ & (\four_bit|regP|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|dec~combout\,
	datab => \four_bit|regP|q\(4),
	datad => \four_bit|regA|q\(4),
	combout => \four_bit|mux2|y[4]~4_combout\);

-- Location: LCCOMB_X23_Y1_N16
\four_bit|somasub|Add0~18\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X24_Y1_N4
\four_bit|mux1|y[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[5]~5_combout\ = (\bloco_controle|ini~combout\ & (\a[5]~input_o\)) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|ini~combout\,
	datac => \a[5]~input_o\,
	datad => \four_bit|somasub|Add0~18_combout\,
	combout => \four_bit|mux1|y[5]~5_combout\);

-- Location: FF_X24_Y1_N5
\four_bit|regA|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|mux1|y[5]~5_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regA|q\(5));

-- Location: LCCOMB_X24_Y1_N20
\four_bit|mux2|y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux2|y[7]~7_combout\ = (\bloco_controle|dec~combout\ & ((\four_bit|regA|q\(7)))) # (!\bloco_controle|dec~combout\ & (\four_bit|regP|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regP|q\(7),
	datab => \bloco_controle|dec~combout\,
	datad => \four_bit|regA|q\(7),
	combout => \four_bit|mux2|y[7]~7_combout\);

-- Location: LCCOMB_X24_Y1_N8
\four_bit|somasub|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~20_combout\ = (\bloco_controle|dec~combout\) # (\b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|dec~combout\,
	datad => \b[6]~input_o\,
	combout => \four_bit|somasub|Add0~20_combout\);

-- Location: LCCOMB_X23_Y1_N18
\four_bit|somasub|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~21_combout\ = (\four_bit|mux2|y[6]~6_combout\ & ((\four_bit|somasub|Add0~20_combout\ & (\four_bit|somasub|Add0~19\ & VCC)) # (!\four_bit|somasub|Add0~20_combout\ & (!\four_bit|somasub|Add0~19\)))) # (!\four_bit|mux2|y[6]~6_combout\ 
-- & ((\four_bit|somasub|Add0~20_combout\ & (!\four_bit|somasub|Add0~19\)) # (!\four_bit|somasub|Add0~20_combout\ & ((\four_bit|somasub|Add0~19\) # (GND)))))
-- \four_bit|somasub|Add0~22\ = CARRY((\four_bit|mux2|y[6]~6_combout\ & (!\four_bit|somasub|Add0~20_combout\ & !\four_bit|somasub|Add0~19\)) # (!\four_bit|mux2|y[6]~6_combout\ & ((!\four_bit|somasub|Add0~19\) # (!\four_bit|somasub|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|mux2|y[6]~6_combout\,
	datab => \four_bit|somasub|Add0~20_combout\,
	datad => VCC,
	cin => \four_bit|somasub|Add0~19\,
	combout => \four_bit|somasub|Add0~21_combout\,
	cout => \four_bit|somasub|Add0~22\);

-- Location: LCCOMB_X23_Y1_N20
\four_bit|somasub|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|somasub|Add0~24_combout\ = \four_bit|somasub|Add0~23_combout\ $ (\four_bit|mux2|y[7]~7_combout\ $ (!\four_bit|somasub|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|somasub|Add0~23_combout\,
	datab => \four_bit|mux2|y[7]~7_combout\,
	cin => \four_bit|somasub|Add0~22\,
	combout => \four_bit|somasub|Add0~24_combout\);

-- Location: LCCOMB_X23_Y1_N22
\four_bit|mux1|y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|mux1|y[7]~7_combout\ = (\bloco_controle|ini~combout\ & (\a[7]~input_o\)) # (!\bloco_controle|ini~combout\ & ((\four_bit|somasub|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \bloco_controle|ini~combout\,
	datad => \four_bit|somasub|Add0~24_combout\,
	combout => \four_bit|mux1|y[7]~7_combout\);

-- Location: FF_X23_Y1_N23
\four_bit|regA|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|mux1|y[7]~7_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regA|q\(7));

-- Location: LCCOMB_X24_Y1_N6
\four_bit|geraAz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \four_bit|geraAz|Equal0~1_combout\ = (!\four_bit|regA|q\(6) & (!\four_bit|regA|q\(5) & (!\four_bit|regA|q\(4) & !\four_bit|regA|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|q\(6),
	datab => \four_bit|regA|q\(5),
	datac => \four_bit|regA|q\(4),
	datad => \four_bit|regA|q\(7),
	combout => \four_bit|geraAz|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y1_N6
\bloco_controle|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|process_0~0_combout\ = (\four_bit|geraBz|Equal0~0_combout\ & ((\four_bit|geraBz|Equal0~1_combout\) # ((\four_bit|geraAz|Equal0~0_combout\ & \four_bit|geraAz|Equal0~1_combout\)))) # (!\four_bit|geraBz|Equal0~0_combout\ & 
-- (\four_bit|geraAz|Equal0~0_combout\ & ((\four_bit|geraAz|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|geraBz|Equal0~0_combout\,
	datab => \four_bit|geraAz|Equal0~0_combout\,
	datac => \four_bit|geraBz|Equal0~1_combout\,
	datad => \four_bit|geraAz|Equal0~1_combout\,
	combout => \bloco_controle|process_0~0_combout\);

-- Location: LCCOMB_X21_Y1_N12
\bloco_controle|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|state~11_combout\ = (\bloco_controle|state.S2~q\ & \bloco_controle|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S2~q\,
	datad => \bloco_controle|process_0~0_combout\,
	combout => \bloco_controle|state~11_combout\);

-- Location: FF_X21_Y1_N13
\bloco_controle|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bloco_controle|state~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|state.S5~q\);

-- Location: LCCOMB_X21_Y1_N28
\bloco_controle|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr3~0_combout\ = (\bloco_controle|state.S5~q\) # (!\bloco_controle|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S0~q\,
	datad => \bloco_controle|state.S5~q\,
	combout => \bloco_controle|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y1_N18
\bloco_controle|pronto\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|pronto~combout\ = (\bloco_controle|WideOr3~0_combout\ & ((\bloco_controle|state.S5~q\))) # (!\bloco_controle|WideOr3~0_combout\ & (\bloco_controle|pronto~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|pronto~combout\,
	datac => \bloco_controle|WideOr3~0_combout\,
	datad => \bloco_controle|state.S5~q\,
	combout => \bloco_controle|pronto~combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X23_Y1_N29
\four_bit|regP|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \four_bit|somasub|Add0~3_combout\,
	clrn => \bloco_controle|ALT_INV_ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regP|q\(0));

-- Location: FF_X23_Y1_N3
\four_bit|regP|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \four_bit|somasub|Add0~6_combout\,
	clrn => \bloco_controle|ALT_INV_ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regP|q\(1));

-- Location: FF_X23_Y1_N11
\four_bit|regP|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|somasub|Add0~9_combout\,
	clrn => \bloco_controle|ALT_INV_ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regP|q\(2));

-- Location: FF_X23_Y1_N13
\four_bit|regP|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|somasub|Add0~12_combout\,
	clrn => \bloco_controle|ALT_INV_ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regP|q\(3));

-- Location: FF_X23_Y1_N27
\four_bit|regP|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \four_bit|somasub|Add0~18_combout\,
	clrn => \bloco_controle|ALT_INV_ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regP|q\(5));

-- Location: FF_X23_Y1_N25
\four_bit|regP|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \four_bit|somasub|Add0~21_combout\,
	clrn => \bloco_controle|ALT_INV_ini~combout\,
	sload => VCC,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regP|q\(6));

-- Location: FF_X23_Y1_N21
\four_bit|regP|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \four_bit|somasub|Add0~24_combout\,
	clrn => \bloco_controle|ALT_INV_ini~combout\,
	ena => \bloco_controle|CP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \four_bit|regP|q\(7));

ww_pronto <= \pronto~output_o\;

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;
END structure;


