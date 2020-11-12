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

-- DATE "11/12/2020 03:25:19"

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

ENTITY 	multiplier2 IS
    PORT (
	entA : IN std_logic_vector(3 DOWNTO 0);
	entB : IN std_logic_vector(3 DOWNTO 0);
	iniciar : IN std_logic;
	Reset : IN std_logic;
	ck : IN std_logic;
	pronto : OUT std_logic;
	mult : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplier2;

-- Design Ports Information
-- pronto	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[1]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[2]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[4]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[6]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- iniciar	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplier2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_mult : std_logic_vector(7 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco_controle|Selector3~0_combout\ : std_logic;
SIGNAL \bloco_operativo|regA|var[0]~1_combout\ : std_logic;
SIGNAL \bloco_operativo|regB|q[0]~feeder_combout\ : std_logic;
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \iniciar~combout\ : std_logic;
SIGNAL \bloco_controle|state~11_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \bloco_controle|state.S1~regout\ : std_logic;
SIGNAL \bloco_controle|state.S2~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|state.S2~regout\ : std_logic;
SIGNAL \bloco_controle|Selector1~0_combout\ : std_logic;
SIGNAL \bloco_controle|state.S3~regout\ : std_logic;
SIGNAL \bloco_operativo|regCont|q[0]~0_combout\ : std_logic;
SIGNAL \bloco_operativo|Subtracao|Add1~1_combout\ : std_logic;
SIGNAL \bloco_controle|ccont~0_combout\ : std_logic;
SIGNAL \bloco_operativo|Subtracao|Add1~0_combout\ : std_logic;
SIGNAL \bloco_controle|state~12_combout\ : std_logic;
SIGNAL \bloco_controle|state~13_combout\ : std_logic;
SIGNAL \bloco_controle|state.S4~regout\ : std_logic;
SIGNAL \bloco_controle|Selector2~0_combout\ : std_logic;
SIGNAL \bloco_controle|state.S5~regout\ : std_logic;
SIGNAL \bloco_operativo|regA|var[3]~4_combout\ : std_logic;
SIGNAL \bloco_operativo|regA|var[2]~3_combout\ : std_logic;
SIGNAL \bloco_operativo|regA|var[0]~0_combout\ : std_logic;
SIGNAL \bloco_operativo|regA|var[1]~2_combout\ : std_logic;
SIGNAL \bloco_operativo|compA|Equal0~0_combout\ : std_logic;
SIGNAL \bloco_operativo|regB|q[2]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|regB|q[3]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|regB|q[1]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|compB|Equal0~0_combout\ : std_logic;
SIGNAL \bloco_controle|Selector3~1_combout\ : std_logic;
SIGNAL \bloco_controle|state.S6~regout\ : std_logic;
SIGNAL \bloco_controle|Selector0~0_combout\ : std_logic;
SIGNAL \bloco_controle|state.S0~regout\ : std_logic;
SIGNAL \bloco_operativo|PL1|var[3]~3_combout\ : std_logic;
SIGNAL \bloco_operativo|PL1|var[2]~2_combout\ : std_logic;
SIGNAL \bloco_operativo|PL1|var[1]~1_combout\ : std_logic;
SIGNAL \bloco_operativo|PL1|var[0]~0_combout\ : std_logic;
SIGNAL \bloco_operativo|regMult|q[0]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|regMult|q[2]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|regMult|q[3]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|soma|Add0~1\ : std_logic;
SIGNAL \bloco_operativo|soma|Add0~3\ : std_logic;
SIGNAL \bloco_operativo|soma|Add0~5\ : std_logic;
SIGNAL \bloco_operativo|soma|Add0~6_combout\ : std_logic;
SIGNAL \bloco_operativo|soma|Add0~7\ : std_logic;
SIGNAL \bloco_operativo|soma|Add0~8_combout\ : std_logic;
SIGNAL \bloco_operativo|muxFF|y[0]~0_combout\ : std_logic;
SIGNAL \bloco_operativo|FF|q~regout\ : std_logic;
SIGNAL \bloco_operativo|PH1|var[3]~4_combout\ : std_logic;
SIGNAL \bloco_operativo|PH1|var[0]~1_combout\ : std_logic;
SIGNAL \bloco_operativo|soma|Add0~4_combout\ : std_logic;
SIGNAL \bloco_operativo|PH1|var[2]~3_combout\ : std_logic;
SIGNAL \bloco_operativo|soma|Add0~2_combout\ : std_logic;
SIGNAL \bloco_operativo|PH1|var[1]~2_combout\ : std_logic;
SIGNAL \bloco_operativo|soma|Add0~0_combout\ : std_logic;
SIGNAL \bloco_operativo|PH1|var[0]~0_combout\ : std_logic;
SIGNAL \bloco_operativo|regMult|q[4]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|regMult|q[5]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|regMult|q[6]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|regMult|q[7]~feeder_combout\ : std_logic;
SIGNAL \bloco_operativo|PL1|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco_operativo|regA|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco_operativo|regB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco_operativo|PH1|var\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco_operativo|regCont|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bloco_operativo|regMult|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bloco_controle|ALT_INV_state.S0~regout\ : std_logic;

BEGIN

ww_entA <= entA;
ww_entB <= entB;
ww_iniciar <= iniciar;
ww_Reset <= Reset;
ww_ck <= ck;
pronto <= ww_pronto;
mult <= ww_mult;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ck~combout\);

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);
\bloco_controle|ALT_INV_state.S0~regout\ <= NOT \bloco_controle|state.S0~regout\;

-- Location: LCCOMB_X37_Y35_N12
\bloco_controle|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector3~0_combout\ = (!\bloco_operativo|regCont|q\(0) & (\bloco_controle|state.S3~regout\ & (!\bloco_operativo|regCont|q\(2) & !\bloco_operativo|regCont|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|regCont|q\(0),
	datab => \bloco_controle|state.S3~regout\,
	datac => \bloco_operativo|regCont|q\(2),
	datad => \bloco_operativo|regCont|q\(1),
	combout => \bloco_controle|Selector3~0_combout\);

-- Location: LCFF_X36_Y35_N11
\bloco_operativo|regA|var[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regA|var[0]~1_combout\,
	ena => \bloco_operativo|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regA|var\(0));

-- Location: LCFF_X37_Y34_N13
\bloco_operativo|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regB|q[0]~feeder_combout\,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regB|q\(0));

-- Location: LCCOMB_X36_Y35_N10
\bloco_operativo|regA|var[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regA|var[0]~1_combout\ = (\bloco_controle|state.S1~regout\ & ((\entA~combout\(0)))) # (!\bloco_controle|state.S1~regout\ & (\bloco_operativo|regA|var\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datac => \bloco_operativo|regA|var\(1),
	datad => \entA~combout\(0),
	combout => \bloco_operativo|regA|var[0]~1_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[0]~I\ : cycloneii_io
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
	padio => ww_entA(0),
	combout => \entA~combout\(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[0]~I\ : cycloneii_io
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
	padio => ww_entB(0),
	combout => \entB~combout\(0));

-- Location: LCCOMB_X37_Y34_N12
\bloco_operativo|regB|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regB|q[0]~feeder_combout\ = \entB~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(0),
	combout => \bloco_operativo|regB|q[0]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ck~I\ : cycloneii_io
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
	padio => ww_ck,
	combout => \ck~combout\);

-- Location: CLKCTRL_G3
\ck~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iniciar~I\ : cycloneii_io
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
	padio => ww_iniciar,
	combout => \iniciar~combout\);

-- Location: LCCOMB_X37_Y35_N4
\bloco_controle|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~11_combout\ = (\iniciar~combout\ & !\bloco_controle|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iniciar~combout\,
	datad => \bloco_controle|state.S0~regout\,
	combout => \bloco_controle|state~11_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
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
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: CLKCTRL_G1
\Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~clkctrl_outclk\);

-- Location: LCFF_X37_Y35_N5
\bloco_controle|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|state~11_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S1~regout\);

-- Location: LCCOMB_X37_Y35_N2
\bloco_controle|state.S2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state.S2~feeder_combout\ = \bloco_controle|state.S1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S1~regout\,
	combout => \bloco_controle|state.S2~feeder_combout\);

-- Location: LCFF_X37_Y35_N3
\bloco_controle|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|state.S2~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S2~regout\);

-- Location: LCCOMB_X37_Y35_N28
\bloco_controle|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector1~0_combout\ = (\bloco_controle|state.S5~regout\) # ((!\bloco_operativo|compB|Equal0~0_combout\ & (\bloco_controle|state.S2~regout\ & !\bloco_operativo|compA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|compB|Equal0~0_combout\,
	datab => \bloco_controle|state.S2~regout\,
	datac => \bloco_operativo|compA|Equal0~0_combout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_controle|Selector1~0_combout\);

-- Location: LCFF_X37_Y35_N29
\bloco_controle|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|Selector1~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S3~regout\);

-- Location: LCCOMB_X37_Y35_N10
\bloco_operativo|regCont|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regCont|q[0]~0_combout\ = (!\bloco_controle|state.S1~regout\ & (\bloco_operativo|regCont|q\(0) $ (\bloco_controle|state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S1~regout\,
	datac => \bloco_operativo|regCont|q\(0),
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_operativo|regCont|q[0]~0_combout\);

-- Location: LCFF_X37_Y35_N11
\bloco_operativo|regCont|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regCont|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regCont|q\(0));

-- Location: LCCOMB_X38_Y35_N24
\bloco_operativo|Subtracao|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|Subtracao|Add1~1_combout\ = \bloco_operativo|regCont|q\(1) $ (!\bloco_operativo|regCont|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_operativo|regCont|q\(1),
	datad => \bloco_operativo|regCont|q\(0),
	combout => \bloco_operativo|Subtracao|Add1~1_combout\);

-- Location: LCCOMB_X37_Y35_N14
\bloco_controle|ccont~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|ccont~0_combout\ = (\bloco_controle|state.S1~regout\) # (\bloco_controle|state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S1~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_controle|ccont~0_combout\);

-- Location: LCFF_X38_Y35_N25
\bloco_operativo|regCont|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|Subtracao|Add1~1_combout\,
	sclr => \bloco_controle|state.S1~regout\,
	ena => \bloco_controle|ccont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regCont|q\(1));

-- Location: LCCOMB_X37_Y35_N8
\bloco_operativo|Subtracao|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|Subtracao|Add1~0_combout\ = \bloco_operativo|regCont|q\(2) $ (((!\bloco_operativo|regCont|q\(0) & !\bloco_operativo|regCont|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|regCont|q\(0),
	datac => \bloco_operativo|regCont|q\(2),
	datad => \bloco_operativo|regCont|q\(1),
	combout => \bloco_operativo|Subtracao|Add1~0_combout\);

-- Location: LCFF_X37_Y35_N9
\bloco_operativo|regCont|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|Subtracao|Add1~0_combout\,
	sdata => VCC,
	sload => \bloco_controle|state.S1~regout\,
	ena => \bloco_controle|ccont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regCont|q\(2));

-- Location: LCCOMB_X37_Y35_N16
\bloco_controle|state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~12_combout\ = (\bloco_controle|state.S3~regout\ & ((\bloco_operativo|regCont|q\(0)) # ((\bloco_operativo|regCont|q\(2)) # (\bloco_operativo|regCont|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|regCont|q\(0),
	datab => \bloco_controle|state.S3~regout\,
	datac => \bloco_operativo|regCont|q\(2),
	datad => \bloco_operativo|regCont|q\(1),
	combout => \bloco_controle|state~12_combout\);

-- Location: LCCOMB_X37_Y34_N30
\bloco_controle|state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~13_combout\ = (\bloco_operativo|regA|var\(0) & \bloco_controle|state~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|regA|var\(0),
	datac => \bloco_controle|state~12_combout\,
	combout => \bloco_controle|state~13_combout\);

-- Location: LCFF_X37_Y34_N31
\bloco_controle|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|state~13_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S4~regout\);

-- Location: LCCOMB_X37_Y34_N0
\bloco_controle|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector2~0_combout\ = (\bloco_controle|state.S4~regout\) # ((!\bloco_operativo|regA|var\(0) & \bloco_controle|state~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|regA|var\(0),
	datac => \bloco_controle|state~12_combout\,
	datad => \bloco_controle|state.S4~regout\,
	combout => \bloco_controle|Selector2~0_combout\);

-- Location: LCFF_X37_Y34_N1
\bloco_controle|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|Selector2~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S5~regout\);

-- Location: LCCOMB_X37_Y35_N30
\bloco_operativo|regA|var[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regA|var[3]~4_combout\ = (\bloco_operativo|regA|var\(3) & !\bloco_controle|state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_operativo|regA|var\(3),
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_operativo|regA|var[3]~4_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[3]~I\ : cycloneii_io
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
	padio => ww_entA(3),
	combout => \entA~combout\(3));

-- Location: LCFF_X37_Y35_N31
\bloco_operativo|regA|var[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regA|var[3]~4_combout\,
	sdata => \entA~combout\(3),
	sload => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regA|var\(3));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[2]~I\ : cycloneii_io
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
	padio => ww_entA(2),
	combout => \entA~combout\(2));

-- Location: LCCOMB_X36_Y35_N22
\bloco_operativo|regA|var[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regA|var[2]~3_combout\ = (\bloco_controle|state.S1~regout\ & ((\entA~combout\(2)))) # (!\bloco_controle|state.S1~regout\ & (\bloco_operativo|regA|var\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datab => \bloco_operativo|regA|var\(3),
	datad => \entA~combout\(2),
	combout => \bloco_operativo|regA|var[2]~3_combout\);

-- Location: LCCOMB_X36_Y35_N14
\bloco_operativo|regA|var[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regA|var[0]~0_combout\ = \bloco_controle|state.S1~regout\ $ (\bloco_controle|state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_operativo|regA|var[0]~0_combout\);

-- Location: LCFF_X36_Y35_N23
\bloco_operativo|regA|var[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regA|var[2]~3_combout\,
	ena => \bloco_operativo|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regA|var\(2));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[1]~I\ : cycloneii_io
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
	padio => ww_entA(1),
	combout => \entA~combout\(1));

-- Location: LCCOMB_X36_Y35_N20
\bloco_operativo|regA|var[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regA|var[1]~2_combout\ = (\bloco_controle|state.S1~regout\ & ((\entA~combout\(1)))) # (!\bloco_controle|state.S1~regout\ & (\bloco_operativo|regA|var\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datab => \bloco_operativo|regA|var\(2),
	datad => \entA~combout\(1),
	combout => \bloco_operativo|regA|var[1]~2_combout\);

-- Location: LCFF_X36_Y35_N21
\bloco_operativo|regA|var[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regA|var[1]~2_combout\,
	ena => \bloco_operativo|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regA|var\(1));

-- Location: LCCOMB_X36_Y35_N4
\bloco_operativo|compA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|compA|Equal0~0_combout\ = (!\bloco_operativo|regA|var\(0) & (!\bloco_operativo|regA|var\(2) & (!\bloco_operativo|regA|var\(1) & !\bloco_operativo|regA|var\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|regA|var\(0),
	datab => \bloco_operativo|regA|var\(2),
	datac => \bloco_operativo|regA|var\(1),
	datad => \bloco_operativo|regA|var\(3),
	combout => \bloco_operativo|compA|Equal0~0_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[2]~I\ : cycloneii_io
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
	padio => ww_entB(2),
	combout => \entB~combout\(2));

-- Location: LCCOMB_X37_Y34_N22
\bloco_operativo|regB|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regB|q[2]~feeder_combout\ = \entB~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(2),
	combout => \bloco_operativo|regB|q[2]~feeder_combout\);

-- Location: LCFF_X37_Y34_N23
\bloco_operativo|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regB|q[2]~feeder_combout\,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regB|q\(2));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[3]~I\ : cycloneii_io
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
	padio => ww_entB(3),
	combout => \entB~combout\(3));

-- Location: LCCOMB_X37_Y34_N20
\bloco_operativo|regB|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regB|q[3]~feeder_combout\ = \entB~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(3),
	combout => \bloco_operativo|regB|q[3]~feeder_combout\);

-- Location: LCFF_X37_Y34_N21
\bloco_operativo|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regB|q[3]~feeder_combout\,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regB|q\(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[1]~I\ : cycloneii_io
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
	padio => ww_entB(1),
	combout => \entB~combout\(1));

-- Location: LCCOMB_X37_Y34_N28
\bloco_operativo|regB|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regB|q[1]~feeder_combout\ = \entB~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(1),
	combout => \bloco_operativo|regB|q[1]~feeder_combout\);

-- Location: LCFF_X37_Y34_N29
\bloco_operativo|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regB|q[1]~feeder_combout\,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regB|q\(1));

-- Location: LCCOMB_X37_Y34_N26
\bloco_operativo|compB|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|compB|Equal0~0_combout\ = (!\bloco_operativo|regB|q\(0) & (!\bloco_operativo|regB|q\(2) & (!\bloco_operativo|regB|q\(3) & !\bloco_operativo|regB|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|regB|q\(0),
	datab => \bloco_operativo|regB|q\(2),
	datac => \bloco_operativo|regB|q\(3),
	datad => \bloco_operativo|regB|q\(1),
	combout => \bloco_operativo|compB|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y35_N6
\bloco_controle|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector3~1_combout\ = (\bloco_controle|Selector3~0_combout\) # ((\bloco_controle|state.S2~regout\ & ((\bloco_operativo|compA|Equal0~0_combout\) # (\bloco_operativo|compB|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|Selector3~0_combout\,
	datab => \bloco_controle|state.S2~regout\,
	datac => \bloco_operativo|compA|Equal0~0_combout\,
	datad => \bloco_operativo|compB|Equal0~0_combout\,
	combout => \bloco_controle|Selector3~1_combout\);

-- Location: LCFF_X37_Y35_N7
\bloco_controle|state.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|Selector3~1_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S6~regout\);

-- Location: LCCOMB_X37_Y35_N0
\bloco_controle|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector0~0_combout\ = (!\bloco_controle|state.S6~regout\ & ((\iniciar~combout\) # (\bloco_controle|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iniciar~combout\,
	datac => \bloco_controle|state.S0~regout\,
	datad => \bloco_controle|state.S6~regout\,
	combout => \bloco_controle|Selector0~0_combout\);

-- Location: LCFF_X37_Y35_N1
\bloco_controle|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|Selector0~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S0~regout\);

-- Location: LCCOMB_X36_Y35_N28
\bloco_operativo|PL1|var[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|PL1|var[3]~3_combout\ = (\bloco_operativo|PH1|var\(0) & !\bloco_controle|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|PH1|var\(0),
	datad => \bloco_controle|state.S1~regout\,
	combout => \bloco_operativo|PL1|var[3]~3_combout\);

-- Location: LCFF_X36_Y35_N29
\bloco_operativo|PL1|var[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|PL1|var[3]~3_combout\,
	ena => \bloco_operativo|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|PL1|var\(3));

-- Location: LCCOMB_X36_Y35_N30
\bloco_operativo|PL1|var[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|PL1|var[2]~2_combout\ = (\bloco_operativo|PL1|var\(3) & !\bloco_controle|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|PL1|var\(3),
	datad => \bloco_controle|state.S1~regout\,
	combout => \bloco_operativo|PL1|var[2]~2_combout\);

-- Location: LCFF_X36_Y35_N31
\bloco_operativo|PL1|var[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|PL1|var[2]~2_combout\,
	ena => \bloco_operativo|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|PL1|var\(2));

-- Location: LCCOMB_X36_Y35_N24
\bloco_operativo|PL1|var[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|PL1|var[1]~1_combout\ = (\bloco_operativo|PL1|var\(2) & !\bloco_controle|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|PL1|var\(2),
	datad => \bloco_controle|state.S1~regout\,
	combout => \bloco_operativo|PL1|var[1]~1_combout\);

-- Location: LCFF_X36_Y35_N25
\bloco_operativo|PL1|var[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|PL1|var[1]~1_combout\,
	ena => \bloco_operativo|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|PL1|var\(1));

-- Location: LCCOMB_X36_Y35_N2
\bloco_operativo|PL1|var[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|PL1|var[0]~0_combout\ = (\bloco_operativo|PL1|var\(1) & !\bloco_controle|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_operativo|PL1|var\(1),
	datad => \bloco_controle|state.S1~regout\,
	combout => \bloco_operativo|PL1|var[0]~0_combout\);

-- Location: LCFF_X36_Y35_N3
\bloco_operativo|PL1|var[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|PL1|var[0]~0_combout\,
	ena => \bloco_operativo|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|PL1|var\(0));

-- Location: LCCOMB_X36_Y35_N12
\bloco_operativo|regMult|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regMult|q[0]~feeder_combout\ = \bloco_operativo|PL1|var\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_operativo|PL1|var\(0),
	combout => \bloco_operativo|regMult|q[0]~feeder_combout\);

-- Location: LCFF_X36_Y35_N13
\bloco_operativo|regMult|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regMult|q[0]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regMult|q\(0));

-- Location: LCFF_X36_Y35_N7
\bloco_operativo|regMult|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \bloco_operativo|PL1|var\(1),
	sload => VCC,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regMult|q\(1));

-- Location: LCCOMB_X36_Y35_N16
\bloco_operativo|regMult|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regMult|q[2]~feeder_combout\ = \bloco_operativo|PL1|var\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_operativo|PL1|var\(2),
	combout => \bloco_operativo|regMult|q[2]~feeder_combout\);

-- Location: LCFF_X36_Y35_N17
\bloco_operativo|regMult|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regMult|q[2]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regMult|q\(2));

-- Location: LCCOMB_X36_Y35_N26
\bloco_operativo|regMult|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regMult|q[3]~feeder_combout\ = \bloco_operativo|PL1|var\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_operativo|PL1|var\(3),
	combout => \bloco_operativo|regMult|q[3]~feeder_combout\);

-- Location: LCFF_X36_Y35_N27
\bloco_operativo|regMult|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regMult|q[3]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regMult|q\(3));

-- Location: LCCOMB_X37_Y34_N2
\bloco_operativo|soma|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|soma|Add0~0_combout\ = (\bloco_operativo|regB|q\(0) & (\bloco_operativo|PH1|var\(0) $ (VCC))) # (!\bloco_operativo|regB|q\(0) & (\bloco_operativo|PH1|var\(0) & VCC))
-- \bloco_operativo|soma|Add0~1\ = CARRY((\bloco_operativo|regB|q\(0) & \bloco_operativo|PH1|var\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|regB|q\(0),
	datab => \bloco_operativo|PH1|var\(0),
	datad => VCC,
	combout => \bloco_operativo|soma|Add0~0_combout\,
	cout => \bloco_operativo|soma|Add0~1\);

-- Location: LCCOMB_X37_Y34_N4
\bloco_operativo|soma|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|soma|Add0~2_combout\ = (\bloco_operativo|PH1|var\(1) & ((\bloco_operativo|regB|q\(1) & (\bloco_operativo|soma|Add0~1\ & VCC)) # (!\bloco_operativo|regB|q\(1) & (!\bloco_operativo|soma|Add0~1\)))) # (!\bloco_operativo|PH1|var\(1) & 
-- ((\bloco_operativo|regB|q\(1) & (!\bloco_operativo|soma|Add0~1\)) # (!\bloco_operativo|regB|q\(1) & ((\bloco_operativo|soma|Add0~1\) # (GND)))))
-- \bloco_operativo|soma|Add0~3\ = CARRY((\bloco_operativo|PH1|var\(1) & (!\bloco_operativo|regB|q\(1) & !\bloco_operativo|soma|Add0~1\)) # (!\bloco_operativo|PH1|var\(1) & ((!\bloco_operativo|soma|Add0~1\) # (!\bloco_operativo|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|PH1|var\(1),
	datab => \bloco_operativo|regB|q\(1),
	datad => VCC,
	cin => \bloco_operativo|soma|Add0~1\,
	combout => \bloco_operativo|soma|Add0~2_combout\,
	cout => \bloco_operativo|soma|Add0~3\);

-- Location: LCCOMB_X37_Y34_N6
\bloco_operativo|soma|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|soma|Add0~4_combout\ = ((\bloco_operativo|PH1|var\(2) $ (\bloco_operativo|regB|q\(2) $ (!\bloco_operativo|soma|Add0~3\)))) # (GND)
-- \bloco_operativo|soma|Add0~5\ = CARRY((\bloco_operativo|PH1|var\(2) & ((\bloco_operativo|regB|q\(2)) # (!\bloco_operativo|soma|Add0~3\))) # (!\bloco_operativo|PH1|var\(2) & (\bloco_operativo|regB|q\(2) & !\bloco_operativo|soma|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|PH1|var\(2),
	datab => \bloco_operativo|regB|q\(2),
	datad => VCC,
	cin => \bloco_operativo|soma|Add0~3\,
	combout => \bloco_operativo|soma|Add0~4_combout\,
	cout => \bloco_operativo|soma|Add0~5\);

-- Location: LCCOMB_X37_Y34_N8
\bloco_operativo|soma|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|soma|Add0~6_combout\ = (\bloco_operativo|regB|q\(3) & ((\bloco_operativo|PH1|var\(3) & (\bloco_operativo|soma|Add0~5\ & VCC)) # (!\bloco_operativo|PH1|var\(3) & (!\bloco_operativo|soma|Add0~5\)))) # (!\bloco_operativo|regB|q\(3) & 
-- ((\bloco_operativo|PH1|var\(3) & (!\bloco_operativo|soma|Add0~5\)) # (!\bloco_operativo|PH1|var\(3) & ((\bloco_operativo|soma|Add0~5\) # (GND)))))
-- \bloco_operativo|soma|Add0~7\ = CARRY((\bloco_operativo|regB|q\(3) & (!\bloco_operativo|PH1|var\(3) & !\bloco_operativo|soma|Add0~5\)) # (!\bloco_operativo|regB|q\(3) & ((!\bloco_operativo|soma|Add0~5\) # (!\bloco_operativo|PH1|var\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|regB|q\(3),
	datab => \bloco_operativo|PH1|var\(3),
	datad => VCC,
	cin => \bloco_operativo|soma|Add0~5\,
	combout => \bloco_operativo|soma|Add0~6_combout\,
	cout => \bloco_operativo|soma|Add0~7\);

-- Location: LCCOMB_X37_Y34_N10
\bloco_operativo|soma|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|soma|Add0~8_combout\ = !\bloco_operativo|soma|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bloco_operativo|soma|Add0~7\,
	combout => \bloco_operativo|soma|Add0~8_combout\);

-- Location: LCCOMB_X37_Y34_N24
\bloco_operativo|muxFF|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|muxFF|y[0]~0_combout\ = (!\bloco_controle|state.S3~regout\ & \bloco_operativo|soma|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S3~regout\,
	datad => \bloco_operativo|soma|Add0~8_combout\,
	combout => \bloco_operativo|muxFF|y[0]~0_combout\);

-- Location: LCFF_X37_Y34_N25
\bloco_operativo|FF|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|muxFF|y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|FF|q~regout\);

-- Location: LCCOMB_X36_Y34_N22
\bloco_operativo|PH1|var[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|PH1|var[3]~4_combout\ = (\bloco_controle|state.S4~regout\ & (\bloco_operativo|soma|Add0~6_combout\)) # (!\bloco_controle|state.S4~regout\ & ((\bloco_operativo|FF|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S4~regout\,
	datac => \bloco_operativo|soma|Add0~6_combout\,
	datad => \bloco_operativo|FF|q~regout\,
	combout => \bloco_operativo|PH1|var[3]~4_combout\);

-- Location: LCCOMB_X36_Y34_N14
\bloco_operativo|PH1|var[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|PH1|var[0]~1_combout\ = (\bloco_controle|state.S4~regout\) # ((\bloco_controle|state.S5~regout\) # (\bloco_controle|state.S1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S4~regout\,
	datac => \bloco_controle|state.S5~regout\,
	datad => \bloco_controle|state.S1~regout\,
	combout => \bloco_operativo|PH1|var[0]~1_combout\);

-- Location: LCFF_X36_Y34_N23
\bloco_operativo|PH1|var[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|PH1|var[3]~4_combout\,
	sclr => \bloco_controle|state.S1~regout\,
	ena => \bloco_operativo|PH1|var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|PH1|var\(3));

-- Location: LCCOMB_X36_Y34_N8
\bloco_operativo|PH1|var[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|PH1|var[2]~3_combout\ = (\bloco_controle|state.S4~regout\ & ((\bloco_operativo|soma|Add0~4_combout\))) # (!\bloco_controle|state.S4~regout\ & (\bloco_operativo|PH1|var\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S4~regout\,
	datac => \bloco_operativo|PH1|var\(3),
	datad => \bloco_operativo|soma|Add0~4_combout\,
	combout => \bloco_operativo|PH1|var[2]~3_combout\);

-- Location: LCFF_X36_Y34_N9
\bloco_operativo|PH1|var[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|PH1|var[2]~3_combout\,
	sclr => \bloco_controle|state.S1~regout\,
	ena => \bloco_operativo|PH1|var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|PH1|var\(2));

-- Location: LCCOMB_X36_Y34_N30
\bloco_operativo|PH1|var[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|PH1|var[1]~2_combout\ = (\bloco_controle|state.S4~regout\ & ((\bloco_operativo|soma|Add0~2_combout\))) # (!\bloco_controle|state.S4~regout\ & (\bloco_operativo|PH1|var\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S4~regout\,
	datac => \bloco_operativo|PH1|var\(2),
	datad => \bloco_operativo|soma|Add0~2_combout\,
	combout => \bloco_operativo|PH1|var[1]~2_combout\);

-- Location: LCFF_X36_Y34_N31
\bloco_operativo|PH1|var[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|PH1|var[1]~2_combout\,
	sclr => \bloco_controle|state.S1~regout\,
	ena => \bloco_operativo|PH1|var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|PH1|var\(1));

-- Location: LCCOMB_X36_Y34_N24
\bloco_operativo|PH1|var[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|PH1|var[0]~0_combout\ = (\bloco_controle|state.S4~regout\ & ((\bloco_operativo|soma|Add0~0_combout\))) # (!\bloco_controle|state.S4~regout\ & (\bloco_operativo|PH1|var\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S4~regout\,
	datac => \bloco_operativo|PH1|var\(1),
	datad => \bloco_operativo|soma|Add0~0_combout\,
	combout => \bloco_operativo|PH1|var[0]~0_combout\);

-- Location: LCFF_X36_Y34_N25
\bloco_operativo|PH1|var[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|PH1|var[0]~0_combout\,
	sclr => \bloco_controle|state.S1~regout\,
	ena => \bloco_operativo|PH1|var[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|PH1|var\(0));

-- Location: LCCOMB_X36_Y35_N0
\bloco_operativo|regMult|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regMult|q[4]~feeder_combout\ = \bloco_operativo|PH1|var\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_operativo|PH1|var\(0),
	combout => \bloco_operativo|regMult|q[4]~feeder_combout\);

-- Location: LCFF_X36_Y35_N1
\bloco_operativo|regMult|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regMult|q[4]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regMult|q\(4));

-- Location: LCCOMB_X36_Y34_N28
\bloco_operativo|regMult|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regMult|q[5]~feeder_combout\ = \bloco_operativo|PH1|var\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_operativo|PH1|var\(1),
	combout => \bloco_operativo|regMult|q[5]~feeder_combout\);

-- Location: LCFF_X36_Y34_N29
\bloco_operativo|regMult|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regMult|q[5]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regMult|q\(5));

-- Location: LCCOMB_X36_Y34_N18
\bloco_operativo|regMult|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regMult|q[6]~feeder_combout\ = \bloco_operativo|PH1|var\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_operativo|PH1|var\(2),
	combout => \bloco_operativo|regMult|q[6]~feeder_combout\);

-- Location: LCFF_X36_Y34_N19
\bloco_operativo|regMult|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regMult|q[6]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regMult|q\(6));

-- Location: LCCOMB_X36_Y34_N16
\bloco_operativo|regMult|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_operativo|regMult|q[7]~feeder_combout\ = \bloco_operativo|PH1|var\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_operativo|PH1|var\(3),
	combout => \bloco_operativo|regMult|q[7]~feeder_combout\);

-- Location: LCFF_X36_Y34_N17
\bloco_operativo|regMult|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_operativo|regMult|q[7]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_operativo|regMult|q\(7));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bloco_controle|ALT_INV_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[0]~I\ : cycloneii_io
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
	datain => \bloco_operativo|regMult|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(0));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[1]~I\ : cycloneii_io
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
	datain => \bloco_operativo|regMult|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(1));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[2]~I\ : cycloneii_io
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
	datain => \bloco_operativo|regMult|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[3]~I\ : cycloneii_io
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
	datain => \bloco_operativo|regMult|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(3));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[4]~I\ : cycloneii_io
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
	datain => \bloco_operativo|regMult|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(4));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[5]~I\ : cycloneii_io
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
	datain => \bloco_operativo|regMult|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[6]~I\ : cycloneii_io
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
	datain => \bloco_operativo|regMult|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(6));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[7]~I\ : cycloneii_io
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
	datain => \bloco_operativo|regMult|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(7));
END structure;


