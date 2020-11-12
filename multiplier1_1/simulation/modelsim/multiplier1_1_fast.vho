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

-- DATE "11/12/2020 03:26:39"

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

ENTITY 	multiplier1_1 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	inicio : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	pronto : OUT std_logic;
	saida : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplier1_1;

-- Design Ports Information
-- pronto	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[5]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[7]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplier1_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inicio : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco_operacao|mux2|y[0]~0_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~5_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~8_combout\ : std_logic;
SIGNAL \bloco_operacao|mux2|y[3]~3_combout\ : std_logic;
SIGNAL \bloco_operacao|mux1|y[0]~0_combout\ : std_logic;
SIGNAL \bloco_operacao|regB|q[3]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \bloco_controle|Selector0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bloco_controle|state.S0~regout\ : std_logic;
SIGNAL \bloco_controle|state~11_combout\ : std_logic;
SIGNAL \bloco_controle|state.S1~regout\ : std_logic;
SIGNAL \bloco_operacao|geraBz|Equal0~0_combout\ : std_logic;
SIGNAL \bloco_operacao|mux2|y[1]~1_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~0_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~2_cout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~4\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~6_combout\ : std_logic;
SIGNAL \bloco_operacao|mux1|y[1]~1_combout\ : std_logic;
SIGNAL \bloco_operacao|mux2|y[2]~2_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~7\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~9_combout\ : std_logic;
SIGNAL \bloco_operacao|mux1|y[2]~2_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~11_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~10\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~12_combout\ : std_logic;
SIGNAL \bloco_operacao|mux1|y[3]~3_combout\ : std_logic;
SIGNAL \bloco_operacao|geraAz|Equal0~0_combout\ : std_logic;
SIGNAL \bloco_controle|state~12_combout\ : std_logic;
SIGNAL \bloco_controle|state.S3~regout\ : std_logic;
SIGNAL \bloco_controle|state.S4~regout\ : std_logic;
SIGNAL \bloco_controle|CA~combout\ : std_logic;
SIGNAL \bloco_controle|state.S2~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|state.S2~regout\ : std_logic;
SIGNAL \bloco_controle|state~10_combout\ : std_logic;
SIGNAL \bloco_controle|state.S5~regout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~3_combout\ : std_logic;
SIGNAL \bloco_operacao|mux2|y[4]~4_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~13\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~14_combout\ : std_logic;
SIGNAL \bloco_operacao|mux2|y[5]~5_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~15\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~16_combout\ : std_logic;
SIGNAL \bloco_operacao|mux2|y[6]~6_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~17\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~18_combout\ : std_logic;
SIGNAL \bloco_operacao|mux2|y[7]~7_combout\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~19\ : std_logic;
SIGNAL \bloco_operacao|somasub|Add0~20_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco_operacao|regP|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco_operacao|regA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco_operacao|regB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);

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

-- Location: LCFF_X40_Y35_N7
\bloco_operacao|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_operacao|regB|q[3]~feeder_combout\,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regB|q\(3));

-- Location: LCFF_X42_Y35_N17
\bloco_operacao|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_operacao|mux1|y[0]~0_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regA|q\(0));

-- Location: LCCOMB_X41_Y35_N24
\bloco_operacao|mux2|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux2|y[0]~0_combout\ = (\bloco_controle|state.S4~regout\ & ((\bloco_operacao|regA|q\(0)))) # (!\bloco_controle|state.S4~regout\ & (\bloco_operacao|regP|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operacao|regP|q\(0),
	datac => \bloco_operacao|regA|q\(0),
	datad => \bloco_controle|state.S4~regout\,
	combout => \bloco_operacao|mux2|y[0]~0_combout\);

-- Location: LCCOMB_X41_Y35_N30
\bloco_operacao|somasub|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~5_combout\ = (\bloco_controle|state.S4~regout\) # (\b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S4~regout\,
	datad => \b~combout\(1),
	combout => \bloco_operacao|somasub|Add0~5_combout\);

-- Location: LCCOMB_X41_Y35_N18
\bloco_operacao|somasub|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~8_combout\ = (\b~combout\(2)) # (\bloco_controle|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datad => \bloco_controle|state.S4~regout\,
	combout => \bloco_operacao|somasub|Add0~8_combout\);

-- Location: LCCOMB_X42_Y35_N2
\bloco_operacao|mux2|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux2|y[3]~3_combout\ = (\bloco_controle|state.S4~regout\ & (\bloco_operacao|regA|q\(3))) # (!\bloco_controle|state.S4~regout\ & ((\bloco_operacao|regP|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operacao|regA|q\(3),
	datac => \bloco_controle|state.S4~regout\,
	datad => \bloco_operacao|regP|q\(3),
	combout => \bloco_operacao|mux2|y[3]~3_combout\);

-- Location: LCCOMB_X42_Y35_N16
\bloco_operacao|mux1|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux1|y[0]~0_combout\ = (\bloco_controle|state.S1~regout\ & (\a~combout\(0))) # (!\bloco_controle|state.S1~regout\ & ((\bloco_operacao|somasub|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S1~regout\,
	datac => \a~combout\(0),
	datad => \bloco_operacao|somasub|Add0~3_combout\,
	combout => \bloco_operacao|mux1|y[0]~0_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y35_N6
\bloco_operacao|regB|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|regB|q[3]~feeder_combout\ = \b~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b~combout\(3),
	combout => \bloco_operacao|regB|q[3]~feeder_combout\);

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

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y35_N24
\bloco_controle|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector0~0_combout\ = (!\bloco_controle|state.S5~regout\ & ((\bloco_controle|state.S0~regout\) # (\inicio~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S5~regout\,
	datac => \bloco_controle|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \bloco_controle|Selector0~0_combout\);

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

-- Location: LCFF_X42_Y35_N25
\bloco_controle|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_controle|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S0~regout\);

-- Location: LCCOMB_X42_Y35_N26
\bloco_controle|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~11_combout\ = (!\bloco_controle|state.S0~regout\ & \inicio~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \bloco_controle|state~11_combout\);

-- Location: LCFF_X41_Y35_N23
\bloco_controle|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bloco_controle|state~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S1~regout\);

-- Location: LCFF_X40_Y35_N19
\bloco_operacao|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(1),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regB|q\(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X40_Y35_N25
\bloco_operacao|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(2),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regB|q\(2));

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

-- Location: LCFF_X40_Y35_N1
\bloco_operacao|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b~combout\(0),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regB|q\(0));

-- Location: LCCOMB_X40_Y35_N24
\bloco_operacao|geraBz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|geraBz|Equal0~0_combout\ = (!\bloco_operacao|regB|q\(3) & (!\bloco_operacao|regB|q\(1) & (!\bloco_operacao|regB|q\(2) & !\bloco_operacao|regB|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operacao|regB|q\(3),
	datab => \bloco_operacao|regB|q\(1),
	datac => \bloco_operacao|regB|q\(2),
	datad => \bloco_operacao|regB|q\(0),
	combout => \bloco_operacao|geraBz|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y35_N28
\bloco_operacao|mux2|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux2|y[1]~1_combout\ = (\bloco_controle|state.S4~regout\ & ((\bloco_operacao|regA|q\(1)))) # (!\bloco_controle|state.S4~regout\ & (\bloco_operacao|regP|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operacao|regP|q\(1),
	datab => \bloco_controle|state.S4~regout\,
	datad => \bloco_operacao|regA|q\(1),
	combout => \bloco_operacao|mux2|y[1]~1_combout\);

-- Location: LCCOMB_X41_Y35_N20
\bloco_operacao|somasub|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~0_combout\ = (\b~combout\(0) & !\bloco_controle|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datad => \bloco_controle|state.S4~regout\,
	combout => \bloco_operacao|somasub|Add0~0_combout\);

-- Location: LCCOMB_X41_Y35_N0
\bloco_operacao|somasub|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~2_cout\ = CARRY(\bloco_controle|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S4~regout\,
	datad => VCC,
	cout => \bloco_operacao|somasub|Add0~2_cout\);

-- Location: LCCOMB_X41_Y35_N2
\bloco_operacao|somasub|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~3_combout\ = (\bloco_operacao|mux2|y[0]~0_combout\ & ((\bloco_operacao|somasub|Add0~0_combout\ & (\bloco_operacao|somasub|Add0~2_cout\ & VCC)) # (!\bloco_operacao|somasub|Add0~0_combout\ & 
-- (!\bloco_operacao|somasub|Add0~2_cout\)))) # (!\bloco_operacao|mux2|y[0]~0_combout\ & ((\bloco_operacao|somasub|Add0~0_combout\ & (!\bloco_operacao|somasub|Add0~2_cout\)) # (!\bloco_operacao|somasub|Add0~0_combout\ & 
-- ((\bloco_operacao|somasub|Add0~2_cout\) # (GND)))))
-- \bloco_operacao|somasub|Add0~4\ = CARRY((\bloco_operacao|mux2|y[0]~0_combout\ & (!\bloco_operacao|somasub|Add0~0_combout\ & !\bloco_operacao|somasub|Add0~2_cout\)) # (!\bloco_operacao|mux2|y[0]~0_combout\ & ((!\bloco_operacao|somasub|Add0~2_cout\) # 
-- (!\bloco_operacao|somasub|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operacao|mux2|y[0]~0_combout\,
	datab => \bloco_operacao|somasub|Add0~0_combout\,
	datad => VCC,
	cin => \bloco_operacao|somasub|Add0~2_cout\,
	combout => \bloco_operacao|somasub|Add0~3_combout\,
	cout => \bloco_operacao|somasub|Add0~4\);

-- Location: LCCOMB_X41_Y35_N4
\bloco_operacao|somasub|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~6_combout\ = ((\bloco_operacao|somasub|Add0~5_combout\ $ (\bloco_operacao|mux2|y[1]~1_combout\ $ (!\bloco_operacao|somasub|Add0~4\)))) # (GND)
-- \bloco_operacao|somasub|Add0~7\ = CARRY((\bloco_operacao|somasub|Add0~5_combout\ & ((\bloco_operacao|mux2|y[1]~1_combout\) # (!\bloco_operacao|somasub|Add0~4\))) # (!\bloco_operacao|somasub|Add0~5_combout\ & (\bloco_operacao|mux2|y[1]~1_combout\ & 
-- !\bloco_operacao|somasub|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operacao|somasub|Add0~5_combout\,
	datab => \bloco_operacao|mux2|y[1]~1_combout\,
	datad => VCC,
	cin => \bloco_operacao|somasub|Add0~4\,
	combout => \bloco_operacao|somasub|Add0~6_combout\,
	cout => \bloco_operacao|somasub|Add0~7\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y35_N30
\bloco_operacao|mux1|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux1|y[1]~1_combout\ = (\bloco_controle|state.S1~regout\ & ((\a~combout\(1)))) # (!\bloco_controle|state.S1~regout\ & (\bloco_operacao|somasub|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S1~regout\,
	datac => \bloco_operacao|somasub|Add0~6_combout\,
	datad => \a~combout\(1),
	combout => \bloco_operacao|mux1|y[1]~1_combout\);

-- Location: LCFF_X42_Y35_N31
\bloco_operacao|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_operacao|mux1|y[1]~1_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regA|q\(1));

-- Location: LCFF_X41_Y35_N27
\bloco_operacao|regP|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bloco_operacao|somasub|Add0~9_combout\,
	aclr => \bloco_controle|state.S1~regout\,
	sload => VCC,
	ena => \bloco_controle|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regP|q\(2));

-- Location: LCCOMB_X41_Y35_N26
\bloco_operacao|mux2|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux2|y[2]~2_combout\ = (\bloco_controle|state.S4~regout\ & (\bloco_operacao|regA|q\(2))) # (!\bloco_controle|state.S4~regout\ & ((\bloco_operacao|regP|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operacao|regA|q\(2),
	datac => \bloco_operacao|regP|q\(2),
	datad => \bloco_controle|state.S4~regout\,
	combout => \bloco_operacao|mux2|y[2]~2_combout\);

-- Location: LCCOMB_X41_Y35_N6
\bloco_operacao|somasub|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~9_combout\ = (\bloco_operacao|somasub|Add0~8_combout\ & ((\bloco_operacao|mux2|y[2]~2_combout\ & (\bloco_operacao|somasub|Add0~7\ & VCC)) # (!\bloco_operacao|mux2|y[2]~2_combout\ & (!\bloco_operacao|somasub|Add0~7\)))) # 
-- (!\bloco_operacao|somasub|Add0~8_combout\ & ((\bloco_operacao|mux2|y[2]~2_combout\ & (!\bloco_operacao|somasub|Add0~7\)) # (!\bloco_operacao|mux2|y[2]~2_combout\ & ((\bloco_operacao|somasub|Add0~7\) # (GND)))))
-- \bloco_operacao|somasub|Add0~10\ = CARRY((\bloco_operacao|somasub|Add0~8_combout\ & (!\bloco_operacao|mux2|y[2]~2_combout\ & !\bloco_operacao|somasub|Add0~7\)) # (!\bloco_operacao|somasub|Add0~8_combout\ & ((!\bloco_operacao|somasub|Add0~7\) # 
-- (!\bloco_operacao|mux2|y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operacao|somasub|Add0~8_combout\,
	datab => \bloco_operacao|mux2|y[2]~2_combout\,
	datad => VCC,
	cin => \bloco_operacao|somasub|Add0~7\,
	combout => \bloco_operacao|somasub|Add0~9_combout\,
	cout => \bloco_operacao|somasub|Add0~10\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y35_N20
\bloco_operacao|mux1|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux1|y[2]~2_combout\ = (\bloco_controle|state.S1~regout\ & ((\a~combout\(2)))) # (!\bloco_controle|state.S1~regout\ & (\bloco_operacao|somasub|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S1~regout\,
	datac => \bloco_operacao|somasub|Add0~9_combout\,
	datad => \a~combout\(2),
	combout => \bloco_operacao|mux1|y[2]~2_combout\);

-- Location: LCFF_X42_Y35_N21
\bloco_operacao|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_operacao|mux1|y[2]~2_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regA|q\(2));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y35_N8
\bloco_operacao|somasub|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~11_combout\ = (\b~combout\(3)) # (\bloco_controle|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \bloco_controle|state.S4~regout\,
	combout => \bloco_operacao|somasub|Add0~11_combout\);

-- Location: LCCOMB_X41_Y35_N8
\bloco_operacao|somasub|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~12_combout\ = ((\bloco_operacao|mux2|y[3]~3_combout\ $ (\bloco_operacao|somasub|Add0~11_combout\ $ (!\bloco_operacao|somasub|Add0~10\)))) # (GND)
-- \bloco_operacao|somasub|Add0~13\ = CARRY((\bloco_operacao|mux2|y[3]~3_combout\ & ((\bloco_operacao|somasub|Add0~11_combout\) # (!\bloco_operacao|somasub|Add0~10\))) # (!\bloco_operacao|mux2|y[3]~3_combout\ & (\bloco_operacao|somasub|Add0~11_combout\ & 
-- !\bloco_operacao|somasub|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operacao|mux2|y[3]~3_combout\,
	datab => \bloco_operacao|somasub|Add0~11_combout\,
	datad => VCC,
	cin => \bloco_operacao|somasub|Add0~10\,
	combout => \bloco_operacao|somasub|Add0~12_combout\,
	cout => \bloco_operacao|somasub|Add0~13\);

-- Location: LCCOMB_X42_Y35_N22
\bloco_operacao|mux1|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux1|y[3]~3_combout\ = (\bloco_controle|state.S1~regout\ & (\a~combout\(3))) # (!\bloco_controle|state.S1~regout\ & ((\bloco_operacao|somasub|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S1~regout\,
	datac => \a~combout\(3),
	datad => \bloco_operacao|somasub|Add0~12_combout\,
	combout => \bloco_operacao|mux1|y[3]~3_combout\);

-- Location: LCFF_X42_Y35_N23
\bloco_operacao|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_operacao|mux1|y[3]~3_combout\,
	ena => \bloco_controle|CA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regA|q\(3));

-- Location: LCCOMB_X42_Y35_N12
\bloco_operacao|geraAz|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|geraAz|Equal0~0_combout\ = (!\bloco_operacao|regA|q\(0) & (!\bloco_operacao|regA|q\(1) & (!\bloco_operacao|regA|q\(2) & !\bloco_operacao|regA|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operacao|regA|q\(0),
	datab => \bloco_operacao|regA|q\(1),
	datac => \bloco_operacao|regA|q\(2),
	datad => \bloco_operacao|regA|q\(3),
	combout => \bloco_operacao|geraAz|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y35_N6
\bloco_controle|state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~12_combout\ = (\bloco_controle|state.S2~regout\ & (!\bloco_operacao|geraBz|Equal0~0_combout\ & !\bloco_operacao|geraAz|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S2~regout\,
	datac => \bloco_operacao|geraBz|Equal0~0_combout\,
	datad => \bloco_operacao|geraAz|Equal0~0_combout\,
	combout => \bloco_controle|state~12_combout\);

-- Location: LCFF_X42_Y35_N7
\bloco_controle|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_controle|state~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S3~regout\);

-- Location: LCFF_X41_Y35_N31
\bloco_controle|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bloco_controle|state.S3~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S4~regout\);

-- Location: LCCOMB_X42_Y35_N10
\bloco_controle|CA\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|CA~combout\ = (\bloco_controle|state.S4~regout\) # (\bloco_controle|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S4~regout\,
	datad => \bloco_controle|state.S1~regout\,
	combout => \bloco_controle|CA~combout\);

-- Location: LCCOMB_X42_Y35_N18
\bloco_controle|state.S2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state.S2~feeder_combout\ = \bloco_controle|CA~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|CA~combout\,
	combout => \bloco_controle|state.S2~feeder_combout\);

-- Location: LCFF_X42_Y35_N19
\bloco_controle|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_controle|state.S2~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S2~regout\);

-- Location: LCCOMB_X42_Y35_N0
\bloco_controle|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~10_combout\ = (\bloco_controle|state.S2~regout\ & ((\bloco_operacao|geraBz|Equal0~0_combout\) # (\bloco_operacao|geraAz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S2~regout\,
	datac => \bloco_operacao|geraBz|Equal0~0_combout\,
	datad => \bloco_operacao|geraAz|Equal0~0_combout\,
	combout => \bloco_controle|state~10_combout\);

-- Location: LCFF_X42_Y35_N1
\bloco_controle|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_controle|state~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S5~regout\);

-- Location: LCFF_X41_Y35_N19
\bloco_operacao|regP|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bloco_operacao|somasub|Add0~3_combout\,
	aclr => \bloco_controle|state.S1~regout\,
	sload => VCC,
	ena => \bloco_controle|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regP|q\(0));

-- Location: LCFF_X41_Y35_N21
\bloco_operacao|regP|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bloco_operacao|somasub|Add0~6_combout\,
	aclr => \bloco_controle|state.S1~regout\,
	sload => VCC,
	ena => \bloco_controle|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regP|q\(1));

-- Location: LCFF_X41_Y35_N29
\bloco_operacao|regP|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bloco_operacao|somasub|Add0~12_combout\,
	aclr => \bloco_controle|state.S1~regout\,
	sload => VCC,
	ena => \bloco_controle|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regP|q\(3));

-- Location: LCCOMB_X42_Y35_N28
\bloco_operacao|mux2|y[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux2|y[4]~4_combout\ = (!\bloco_controle|state.S4~regout\ & \bloco_operacao|regP|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S4~regout\,
	datad => \bloco_operacao|regP|q\(4),
	combout => \bloco_operacao|mux2|y[4]~4_combout\);

-- Location: LCCOMB_X41_Y35_N10
\bloco_operacao|somasub|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~14_combout\ = (\bloco_controle|state.S4~regout\ & ((\bloco_operacao|mux2|y[4]~4_combout\ & (\bloco_operacao|somasub|Add0~13\ & VCC)) # (!\bloco_operacao|mux2|y[4]~4_combout\ & (!\bloco_operacao|somasub|Add0~13\)))) # 
-- (!\bloco_controle|state.S4~regout\ & ((\bloco_operacao|mux2|y[4]~4_combout\ & (!\bloco_operacao|somasub|Add0~13\)) # (!\bloco_operacao|mux2|y[4]~4_combout\ & ((\bloco_operacao|somasub|Add0~13\) # (GND)))))
-- \bloco_operacao|somasub|Add0~15\ = CARRY((\bloco_controle|state.S4~regout\ & (!\bloco_operacao|mux2|y[4]~4_combout\ & !\bloco_operacao|somasub|Add0~13\)) # (!\bloco_controle|state.S4~regout\ & ((!\bloco_operacao|somasub|Add0~13\) # 
-- (!\bloco_operacao|mux2|y[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S4~regout\,
	datab => \bloco_operacao|mux2|y[4]~4_combout\,
	datad => VCC,
	cin => \bloco_operacao|somasub|Add0~13\,
	combout => \bloco_operacao|somasub|Add0~14_combout\,
	cout => \bloco_operacao|somasub|Add0~15\);

-- Location: LCFF_X41_Y35_N11
\bloco_operacao|regP|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_operacao|somasub|Add0~14_combout\,
	aclr => \bloco_controle|state.S1~regout\,
	ena => \bloco_controle|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regP|q\(4));

-- Location: LCCOMB_X41_Y35_N22
\bloco_operacao|mux2|y[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux2|y[5]~5_combout\ = (\bloco_operacao|regP|q\(5) & !\bloco_controle|state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operacao|regP|q\(5),
	datad => \bloco_controle|state.S4~regout\,
	combout => \bloco_operacao|mux2|y[5]~5_combout\);

-- Location: LCCOMB_X41_Y35_N12
\bloco_operacao|somasub|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~16_combout\ = ((\bloco_controle|state.S4~regout\ $ (\bloco_operacao|mux2|y[5]~5_combout\ $ (!\bloco_operacao|somasub|Add0~15\)))) # (GND)
-- \bloco_operacao|somasub|Add0~17\ = CARRY((\bloco_controle|state.S4~regout\ & ((\bloco_operacao|mux2|y[5]~5_combout\) # (!\bloco_operacao|somasub|Add0~15\))) # (!\bloco_controle|state.S4~regout\ & (\bloco_operacao|mux2|y[5]~5_combout\ & 
-- !\bloco_operacao|somasub|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S4~regout\,
	datab => \bloco_operacao|mux2|y[5]~5_combout\,
	datad => VCC,
	cin => \bloco_operacao|somasub|Add0~15\,
	combout => \bloco_operacao|somasub|Add0~16_combout\,
	cout => \bloco_operacao|somasub|Add0~17\);

-- Location: LCFF_X41_Y35_N13
\bloco_operacao|regP|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_operacao|somasub|Add0~16_combout\,
	aclr => \bloco_controle|state.S1~regout\,
	ena => \bloco_controle|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regP|q\(5));

-- Location: LCCOMB_X42_Y35_N14
\bloco_operacao|mux2|y[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux2|y[6]~6_combout\ = (!\bloco_controle|state.S4~regout\ & \bloco_operacao|regP|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S4~regout\,
	datad => \bloco_operacao|regP|q\(6),
	combout => \bloco_operacao|mux2|y[6]~6_combout\);

-- Location: LCCOMB_X41_Y35_N14
\bloco_operacao|somasub|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~18_combout\ = (\bloco_controle|state.S4~regout\ & ((\bloco_operacao|mux2|y[6]~6_combout\ & (\bloco_operacao|somasub|Add0~17\ & VCC)) # (!\bloco_operacao|mux2|y[6]~6_combout\ & (!\bloco_operacao|somasub|Add0~17\)))) # 
-- (!\bloco_controle|state.S4~regout\ & ((\bloco_operacao|mux2|y[6]~6_combout\ & (!\bloco_operacao|somasub|Add0~17\)) # (!\bloco_operacao|mux2|y[6]~6_combout\ & ((\bloco_operacao|somasub|Add0~17\) # (GND)))))
-- \bloco_operacao|somasub|Add0~19\ = CARRY((\bloco_controle|state.S4~regout\ & (!\bloco_operacao|mux2|y[6]~6_combout\ & !\bloco_operacao|somasub|Add0~17\)) # (!\bloco_controle|state.S4~regout\ & ((!\bloco_operacao|somasub|Add0~17\) # 
-- (!\bloco_operacao|mux2|y[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S4~regout\,
	datab => \bloco_operacao|mux2|y[6]~6_combout\,
	datad => VCC,
	cin => \bloco_operacao|somasub|Add0~17\,
	combout => \bloco_operacao|somasub|Add0~18_combout\,
	cout => \bloco_operacao|somasub|Add0~19\);

-- Location: LCFF_X41_Y35_N15
\bloco_operacao|regP|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_operacao|somasub|Add0~18_combout\,
	aclr => \bloco_controle|state.S1~regout\,
	ena => \bloco_controle|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regP|q\(6));

-- Location: LCCOMB_X42_Y35_N4
\bloco_operacao|mux2|y[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|mux2|y[7]~7_combout\ = (!\bloco_controle|state.S4~regout\ & \bloco_operacao|regP|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S4~regout\,
	datad => \bloco_operacao|regP|q\(7),
	combout => \bloco_operacao|mux2|y[7]~7_combout\);

-- Location: LCCOMB_X41_Y35_N16
\bloco_operacao|somasub|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operacao|somasub|Add0~20_combout\ = \bloco_controle|state.S4~regout\ $ (\bloco_operacao|somasub|Add0~19\ $ (!\bloco_operacao|mux2|y[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S4~regout\,
	datad => \bloco_operacao|mux2|y[7]~7_combout\,
	cin => \bloco_operacao|somasub|Add0~19\,
	combout => \bloco_operacao|somasub|Add0~20_combout\);

-- Location: LCFF_X41_Y35_N17
\bloco_operacao|regP|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bloco_operacao|somasub|Add0~20_combout\,
	aclr => \bloco_controle|state.S1~regout\,
	ena => \bloco_controle|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operacao|regP|q\(7));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_controle|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_operacao|regP|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_operacao|regP|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_operacao|regP|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_operacao|regP|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_operacao|regP|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(4));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_operacao|regP|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(5));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_operacao|regP|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(6));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_operacao|regP|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(7));
END structure;


