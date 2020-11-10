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

-- DATE "11/10/2020 03:54:59"

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
	entA : IN std_logic_vector(7 DOWNTO 0);
	entB : IN std_logic_vector(7 DOWNTO 0);
	iniciar : IN std_logic;
	Reset : IN std_logic;
	ck : IN std_logic;
	pronto : OUT std_logic;
	mult : OUT std_logic_vector(15 DOWNTO 0)
	);
END multiplier2;

-- Design Ports Information
-- pronto	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[3]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[4]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[5]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[7]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[8]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[9]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[10]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[11]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[12]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[13]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[14]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mult[15]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- iniciar	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[4]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[5]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[6]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[6]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[7]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_entA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_mult : std_logic_vector(15 DOWNTO 0);
SIGNAL \ck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \four_bit|compA|Equal0~0_combout\ : std_logic;
SIGNAL \bloco_controle|state.S2~regout\ : std_logic;
SIGNAL \four_bit|regA|var[3]~4_combout\ : std_logic;
SIGNAL \four_bit|regA|var[5]~6_combout\ : std_logic;
SIGNAL \four_bit|muxcont|y[2]~1_combout\ : std_logic;
SIGNAL \ck~combout\ : std_logic;
SIGNAL \ck~clkctrl_outclk\ : std_logic;
SIGNAL \bloco_controle|Selector1~0_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \bloco_controle|state.S3~regout\ : std_logic;
SIGNAL \four_bit|muxcont|y[0]~2_combout\ : std_logic;
SIGNAL \iniciar~combout\ : std_logic;
SIGNAL \bloco_controle|state~12_combout\ : std_logic;
SIGNAL \bloco_controle|state.S1~regout\ : std_logic;
SIGNAL \bloco_controle|ccont~combout\ : std_logic;
SIGNAL \four_bit|muxcont|y[1]~3_combout\ : std_logic;
SIGNAL \four_bit|Subtracao|Add1~0_combout\ : std_logic;
SIGNAL \four_bit|muxcont|y[3]~0_combout\ : std_logic;
SIGNAL \four_bit|compcont|Equal0~0_combout\ : std_logic;
SIGNAL \four_bit|regA|var[2]~3_combout\ : std_logic;
SIGNAL \four_bit|regA|var[0]~0_combout\ : std_logic;
SIGNAL \four_bit|regA|var[1]~2_combout\ : std_logic;
SIGNAL \four_bit|regA|var[0]~1_combout\ : std_logic;
SIGNAL \bloco_controle|state~13_combout\ : std_logic;
SIGNAL \bloco_controle|state.S4~regout\ : std_logic;
SIGNAL \bloco_controle|Selector2~0_combout\ : std_logic;
SIGNAL \bloco_controle|state.S5~regout\ : std_logic;
SIGNAL \four_bit|regA|var[7]~8_combout\ : std_logic;
SIGNAL \four_bit|regA|var[6]~7_combout\ : std_logic;
SIGNAL \four_bit|regA|var[4]~5_combout\ : std_logic;
SIGNAL \four_bit|compA|Equal0~1_combout\ : std_logic;
SIGNAL \four_bit|compB|Equal0~0_combout\ : std_logic;
SIGNAL \four_bit|compB|Equal0~1_combout\ : std_logic;
SIGNAL \bloco_controle|process_0~0_combout\ : std_logic;
SIGNAL \bloco_controle|state~11_combout\ : std_logic;
SIGNAL \bloco_controle|state.S6~regout\ : std_logic;
SIGNAL \bloco_controle|Selector0~0_combout\ : std_logic;
SIGNAL \bloco_controle|state.S0~regout\ : std_logic;
SIGNAL \four_bit|PL1|var[3]~3_combout\ : std_logic;
SIGNAL \four_bit|PL1|var[2]~2_combout\ : std_logic;
SIGNAL \four_bit|PL1|var[1]~1_combout\ : std_logic;
SIGNAL \four_bit|PL1|var[0]~0_combout\ : std_logic;
SIGNAL \four_bit|regMult|q[1]~feeder_combout\ : std_logic;
SIGNAL \four_bit|regMult|q[2]~feeder_combout\ : std_logic;
SIGNAL \four_bit|regMult|q[3]~feeder_combout\ : std_logic;
SIGNAL \four_bit|PL1|var[5]~5_combout\ : std_logic;
SIGNAL \four_bit|PL1|var[4]~4_combout\ : std_logic;
SIGNAL \four_bit|regMult|q[5]~feeder_combout\ : std_logic;
SIGNAL \four_bit|soma|Add0~0_combout\ : std_logic;
SIGNAL \four_bit|PH1|var[0]~16_combout\ : std_logic;
SIGNAL \four_bit|PH1|var[0]~14_combout\ : std_logic;
SIGNAL \four_bit|PH1|srOUT~feeder_combout\ : std_logic;
SIGNAL \four_bit|PH1|srOUT~regout\ : std_logic;
SIGNAL \four_bit|PL1|var[7]~7_combout\ : std_logic;
SIGNAL \four_bit|PL1|var[6]~6_combout\ : std_logic;
SIGNAL \four_bit|regMult|q[7]~feeder_combout\ : std_logic;
SIGNAL \four_bit|soma|Add0~1\ : std_logic;
SIGNAL \four_bit|soma|Add0~3\ : std_logic;
SIGNAL \four_bit|soma|Add0~5\ : std_logic;
SIGNAL \four_bit|soma|Add0~7\ : std_logic;
SIGNAL \four_bit|soma|Add0~9\ : std_logic;
SIGNAL \four_bit|soma|Add0~10_combout\ : std_logic;
SIGNAL \four_bit|PH1|var[5]~21_combout\ : std_logic;
SIGNAL \four_bit|soma|Add0~8_combout\ : std_logic;
SIGNAL \four_bit|PH1|var[4]~20_combout\ : std_logic;
SIGNAL \four_bit|soma|Add0~6_combout\ : std_logic;
SIGNAL \four_bit|PH1|var[3]~19_combout\ : std_logic;
SIGNAL \four_bit|soma|Add0~4_combout\ : std_logic;
SIGNAL \four_bit|PH1|var[2]~18_combout\ : std_logic;
SIGNAL \four_bit|soma|Add0~2_combout\ : std_logic;
SIGNAL \four_bit|PH1|var[1]~17_combout\ : std_logic;
SIGNAL \four_bit|regMult|q[9]~feeder_combout\ : std_logic;
SIGNAL \four_bit|regMult|q[12]~feeder_combout\ : std_logic;
SIGNAL \four_bit|soma|Add0~11\ : std_logic;
SIGNAL \four_bit|soma|Add0~13\ : std_logic;
SIGNAL \four_bit|soma|Add0~14_combout\ : std_logic;
SIGNAL \four_bit|PH1|var[7]~15_combout\ : std_logic;
SIGNAL \four_bit|soma|Add0~12_combout\ : std_logic;
SIGNAL \four_bit|PH1|var[6]~22_combout\ : std_logic;
SIGNAL \four_bit|regMult|q[14]~feeder_combout\ : std_logic;
SIGNAL \entB~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \four_bit|regCont|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \four_bit|PH1|var\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \four_bit|regA|var\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \four_bit|regB|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \four_bit|PL1|var\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \four_bit|regMult|q\ : std_logic_vector(15 DOWNTO 0);
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

-- Location: LCFF_X28_Y31_N25
\four_bit|regA|var[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regA|var[3]~4_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|var\(3));

-- Location: LCCOMB_X28_Y31_N6
\four_bit|compA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|compA|Equal0~0_combout\ = (!\four_bit|regA|var\(0) & (!\four_bit|regA|var\(1) & (!\four_bit|regA|var\(3) & !\four_bit|regA|var\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|var\(0),
	datab => \four_bit|regA|var\(1),
	datac => \four_bit|regA|var\(3),
	datad => \four_bit|regA|var\(2),
	combout => \four_bit|compA|Equal0~0_combout\);

-- Location: LCFF_X29_Y31_N17
\four_bit|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \entB~combout\(1),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(1));

-- Location: LCFF_X29_Y31_N25
\four_bit|regB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \entB~combout\(5),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(5));

-- Location: LCFF_X28_Y31_N17
\four_bit|regA|var[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regA|var[5]~6_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|var\(5));

-- Location: LCFF_X27_Y31_N15
\bloco_controle|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \bloco_controle|state.S1~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S2~regout\);

-- Location: LCCOMB_X28_Y31_N24
\four_bit|regA|var[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regA|var[3]~4_combout\ = (\bloco_controle|state.S5~regout\ & ((\four_bit|regA|var\(4)))) # (!\bloco_controle|state.S5~regout\ & (\entA~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S5~regout\,
	datac => \entA~combout\(3),
	datad => \four_bit|regA|var\(4),
	combout => \four_bit|regA|var[3]~4_combout\);

-- Location: LCCOMB_X28_Y31_N16
\four_bit|regA|var[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regA|var[5]~6_combout\ = (\bloco_controle|state.S5~regout\ & ((\four_bit|regA|var\(6)))) # (!\bloco_controle|state.S5~regout\ & (\entA~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S5~regout\,
	datac => \entA~combout\(5),
	datad => \four_bit|regA|var\(6),
	combout => \four_bit|regA|var[5]~6_combout\);

-- Location: LCFF_X27_Y31_N7
\four_bit|regCont|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|muxcont|y[2]~1_combout\,
	ena => \bloco_controle|ccont~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regCont|q\(2));

-- Location: LCCOMB_X27_Y31_N6
\four_bit|muxcont|y[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|muxcont|y[2]~1_combout\ = (!\bloco_controle|state.S1~regout\ & (\four_bit|regCont|q\(2) $ (((!\four_bit|regCont|q\(0) & !\four_bit|regCont|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datab => \four_bit|regCont|q\(0),
	datac => \four_bit|regCont|q\(2),
	datad => \four_bit|regCont|q\(1),
	combout => \four_bit|muxcont|y[2]~1_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[5]~I\ : cycloneii_io
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
	padio => ww_entB(5),
	combout => \entB~combout\(5));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[5]~I\ : cycloneii_io
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
	padio => ww_entA(5),
	combout => \entA~combout\(5));

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

-- Location: LCCOMB_X28_Y31_N14
\bloco_controle|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector1~0_combout\ = (\bloco_controle|state.S5~regout\) # ((\bloco_controle|state.S2~regout\ & !\bloco_controle|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S2~regout\,
	datab => \bloco_controle|state.S5~regout\,
	datad => \bloco_controle|process_0~0_combout\,
	combout => \bloco_controle|Selector1~0_combout\);

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

-- Location: LCFF_X28_Y31_N15
\bloco_controle|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|Selector1~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S3~regout\);

-- Location: LCCOMB_X27_Y31_N20
\four_bit|muxcont|y[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|muxcont|y[0]~2_combout\ = (!\bloco_controle|state.S1~regout\ & !\four_bit|regCont|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datac => \four_bit|regCont|q\(0),
	combout => \four_bit|muxcont|y[0]~2_combout\);

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

-- Location: LCCOMB_X27_Y31_N24
\bloco_controle|state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~12_combout\ = (!\bloco_controle|state.S0~regout\ & \iniciar~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S0~regout\,
	datad => \iniciar~combout\,
	combout => \bloco_controle|state~12_combout\);

-- Location: LCFF_X27_Y31_N25
\bloco_controle|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|state~12_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S1~regout\);

-- Location: LCCOMB_X27_Y31_N12
\bloco_controle|ccont\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|ccont~combout\ = (\bloco_controle|state.S1~regout\) # (\bloco_controle|state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S1~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \bloco_controle|ccont~combout\);

-- Location: LCFF_X27_Y31_N21
\four_bit|regCont|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|muxcont|y[0]~2_combout\,
	ena => \bloco_controle|ccont~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regCont|q\(0));

-- Location: LCCOMB_X27_Y31_N18
\four_bit|muxcont|y[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|muxcont|y[1]~3_combout\ = (!\bloco_controle|state.S1~regout\ & (\four_bit|regCont|q\(1) $ (!\four_bit|regCont|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datac => \four_bit|regCont|q\(1),
	datad => \four_bit|regCont|q\(0),
	combout => \four_bit|muxcont|y[1]~3_combout\);

-- Location: LCFF_X27_Y31_N19
\four_bit|regCont|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|muxcont|y[1]~3_combout\,
	ena => \bloco_controle|ccont~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regCont|q\(1));

-- Location: LCCOMB_X27_Y31_N2
\four_bit|Subtracao|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|Subtracao|Add1~0_combout\ = \four_bit|regCont|q\(3) $ (((\four_bit|regCont|q\(2)) # ((\four_bit|regCont|q\(1)) # (\four_bit|regCont|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regCont|q\(2),
	datab => \four_bit|regCont|q\(1),
	datac => \four_bit|regCont|q\(0),
	datad => \four_bit|regCont|q\(3),
	combout => \four_bit|Subtracao|Add1~0_combout\);

-- Location: LCCOMB_X27_Y31_N28
\four_bit|muxcont|y[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|muxcont|y[3]~0_combout\ = (\bloco_controle|state.S1~regout\) # (!\four_bit|Subtracao|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S1~regout\,
	datad => \four_bit|Subtracao|Add1~0_combout\,
	combout => \four_bit|muxcont|y[3]~0_combout\);

-- Location: LCFF_X27_Y31_N29
\four_bit|regCont|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|muxcont|y[3]~0_combout\,
	ena => \bloco_controle|ccont~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regCont|q\(3));

-- Location: LCCOMB_X27_Y31_N16
\four_bit|compcont|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|compcont|Equal0~0_combout\ = (!\four_bit|regCont|q\(2) & (!\four_bit|regCont|q\(1) & (!\four_bit|regCont|q\(0) & !\four_bit|regCont|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regCont|q\(2),
	datab => \four_bit|regCont|q\(1),
	datac => \four_bit|regCont|q\(0),
	datad => \four_bit|regCont|q\(3),
	combout => \four_bit|compcont|Equal0~0_combout\);

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

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X28_Y31_N26
\four_bit|regA|var[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regA|var[2]~3_combout\ = (\bloco_controle|state.S5~regout\ & (\four_bit|regA|var\(3))) # (!\bloco_controle|state.S5~regout\ & ((\entA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|var\(3),
	datab => \bloco_controle|state.S5~regout\,
	datac => \entA~combout\(2),
	combout => \four_bit|regA|var[2]~3_combout\);

-- Location: LCCOMB_X27_Y31_N26
\four_bit|regA|var[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regA|var[0]~0_combout\ = \bloco_controle|state.S1~regout\ $ (\bloco_controle|state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S1~regout\,
	datad => \bloco_controle|state.S5~regout\,
	combout => \four_bit|regA|var[0]~0_combout\);

-- Location: LCFF_X28_Y31_N27
\four_bit|regA|var[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regA|var[2]~3_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|var\(2));

-- Location: LCCOMB_X28_Y31_N28
\four_bit|regA|var[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regA|var[1]~2_combout\ = (\bloco_controle|state.S5~regout\ & ((\four_bit|regA|var\(2)))) # (!\bloco_controle|state.S5~regout\ & (\entA~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S5~regout\,
	datac => \entA~combout\(1),
	datad => \four_bit|regA|var\(2),
	combout => \four_bit|regA|var[1]~2_combout\);

-- Location: LCFF_X28_Y31_N29
\four_bit|regA|var[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regA|var[1]~2_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|var\(1));

-- Location: LCCOMB_X28_Y31_N10
\four_bit|regA|var[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regA|var[0]~1_combout\ = (\bloco_controle|state.S5~regout\ & ((\four_bit|regA|var\(1)))) # (!\bloco_controle|state.S5~regout\ & (\entA~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S5~regout\,
	datac => \entA~combout\(0),
	datad => \four_bit|regA|var\(1),
	combout => \four_bit|regA|var[0]~1_combout\);

-- Location: LCFF_X28_Y31_N11
\four_bit|regA|var[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regA|var[0]~1_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|var\(0));

-- Location: LCCOMB_X28_Y31_N0
\bloco_controle|state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~13_combout\ = (\bloco_controle|state.S3~regout\ & ((\four_bit|compcont|Equal0~0_combout\) # (\four_bit|regA|var\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|compcont|Equal0~0_combout\,
	datac => \bloco_controle|state.S3~regout\,
	datad => \four_bit|regA|var\(0),
	combout => \bloco_controle|state~13_combout\);

-- Location: LCFF_X28_Y31_N1
\bloco_controle|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|state~13_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S4~regout\);

-- Location: LCCOMB_X28_Y31_N22
\bloco_controle|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector2~0_combout\ = (\bloco_controle|state.S4~regout\) # ((!\four_bit|regA|var\(0) & (\bloco_controle|state.S3~regout\ & !\four_bit|compcont|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|var\(0),
	datab => \bloco_controle|state.S3~regout\,
	datac => \bloco_controle|state.S4~regout\,
	datad => \four_bit|compcont|Equal0~0_combout\,
	combout => \bloco_controle|Selector2~0_combout\);

-- Location: LCFF_X28_Y31_N23
\bloco_controle|state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|Selector2~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S5~regout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[7]~I\ : cycloneii_io
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
	padio => ww_entA(7),
	combout => \entA~combout\(7));

-- Location: LCCOMB_X27_Y31_N30
\four_bit|regA|var[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regA|var[7]~8_combout\ = (\bloco_controle|state.S1~regout\ & (\entA~combout\(7))) # (!\bloco_controle|state.S1~regout\ & ((\four_bit|regA|var\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entA~combout\(7),
	datac => \bloco_controle|state.S1~regout\,
	datad => \four_bit|regA|var\(7),
	combout => \four_bit|regA|var[7]~8_combout\);

-- Location: LCFF_X28_Y31_N5
\four_bit|regA|var[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \four_bit|regA|var[7]~8_combout\,
	sclr => \bloco_controle|state.S5~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|var\(7));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[6]~I\ : cycloneii_io
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
	padio => ww_entA(6),
	combout => \entA~combout\(6));

-- Location: LCCOMB_X28_Y31_N18
\four_bit|regA|var[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regA|var[6]~7_combout\ = (\bloco_controle|state.S5~regout\ & (\four_bit|regA|var\(7))) # (!\bloco_controle|state.S5~regout\ & ((\entA~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S5~regout\,
	datac => \four_bit|regA|var\(7),
	datad => \entA~combout\(6),
	combout => \four_bit|regA|var[6]~7_combout\);

-- Location: LCFF_X28_Y31_N19
\four_bit|regA|var[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regA|var[6]~7_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|var\(6));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[4]~I\ : cycloneii_io
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
	padio => ww_entA(4),
	combout => \entA~combout\(4));

-- Location: LCCOMB_X28_Y31_N2
\four_bit|regA|var[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regA|var[4]~5_combout\ = (\bloco_controle|state.S5~regout\ & (\four_bit|regA|var\(5))) # (!\bloco_controle|state.S5~regout\ & ((\entA~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|var\(5),
	datab => \bloco_controle|state.S5~regout\,
	datad => \entA~combout\(4),
	combout => \four_bit|regA|var[4]~5_combout\);

-- Location: LCFF_X28_Y31_N3
\four_bit|regA|var[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regA|var[4]~5_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regA|var\(4));

-- Location: LCCOMB_X28_Y31_N4
\four_bit|compA|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|compA|Equal0~1_combout\ = (!\four_bit|regA|var\(5) & (!\four_bit|regA|var\(6) & (!\four_bit|regA|var\(7) & !\four_bit|regA|var\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regA|var\(5),
	datab => \four_bit|regA|var\(6),
	datac => \four_bit|regA|var\(7),
	datad => \four_bit|regA|var\(4),
	combout => \four_bit|compA|Equal0~1_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X29_Y31_N9
\four_bit|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \entB~combout\(0),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X29_Y31_N15
\four_bit|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \entB~combout\(2),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X29_Y31_N21
\four_bit|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \entB~combout\(3),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(3));

-- Location: LCCOMB_X28_Y31_N8
\four_bit|compB|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|compB|Equal0~0_combout\ = (!\four_bit|regB|q\(1) & (!\four_bit|regB|q\(0) & (!\four_bit|regB|q\(2) & !\four_bit|regB|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(1),
	datab => \four_bit|regB|q\(0),
	datac => \four_bit|regB|q\(2),
	datad => \four_bit|regB|q\(3),
	combout => \four_bit|compB|Equal0~0_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[6]~I\ : cycloneii_io
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
	padio => ww_entB(6),
	combout => \entB~combout\(6));

-- Location: LCFF_X29_Y31_N23
\four_bit|regB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \entB~combout\(6),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(6));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[4]~I\ : cycloneii_io
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
	padio => ww_entB(4),
	combout => \entB~combout\(4));

-- Location: LCFF_X29_Y31_N7
\four_bit|regB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \entB~combout\(4),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(4));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[7]~I\ : cycloneii_io
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
	padio => ww_entB(7),
	combout => \entB~combout\(7));

-- Location: LCFF_X29_Y31_N29
\four_bit|regB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \entB~combout\(7),
	sload => VCC,
	ena => \bloco_controle|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regB|q\(7));

-- Location: LCCOMB_X29_Y31_N6
\four_bit|compB|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|compB|Equal0~1_combout\ = (!\four_bit|regB|q\(5) & (!\four_bit|regB|q\(6) & (!\four_bit|regB|q\(4) & !\four_bit|regB|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(5),
	datab => \four_bit|regB|q\(6),
	datac => \four_bit|regB|q\(4),
	datad => \four_bit|regB|q\(7),
	combout => \four_bit|compB|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y31_N12
\bloco_controle|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|process_0~0_combout\ = (\four_bit|compA|Equal0~0_combout\ & ((\four_bit|compA|Equal0~1_combout\) # ((\four_bit|compB|Equal0~0_combout\ & \four_bit|compB|Equal0~1_combout\)))) # (!\four_bit|compA|Equal0~0_combout\ & 
-- (((\four_bit|compB|Equal0~0_combout\ & \four_bit|compB|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|compA|Equal0~0_combout\,
	datab => \four_bit|compA|Equal0~1_combout\,
	datac => \four_bit|compB|Equal0~0_combout\,
	datad => \four_bit|compB|Equal0~1_combout\,
	combout => \bloco_controle|process_0~0_combout\);

-- Location: LCCOMB_X28_Y31_N30
\bloco_controle|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|state~11_combout\ = (\bloco_controle|state.S2~regout\ & \bloco_controle|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S2~regout\,
	datad => \bloco_controle|process_0~0_combout\,
	combout => \bloco_controle|state~11_combout\);

-- Location: LCFF_X28_Y31_N31
\bloco_controle|state.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|state~11_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S6~regout\);

-- Location: LCCOMB_X27_Y31_N0
\bloco_controle|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector0~0_combout\ = (!\bloco_controle|state.S6~regout\ & ((\bloco_controle|state.S0~regout\) # (\iniciar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S6~regout\,
	datac => \bloco_controle|state.S0~regout\,
	datad => \iniciar~combout\,
	combout => \bloco_controle|Selector0~0_combout\);

-- Location: LCFF_X27_Y31_N1
\bloco_controle|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \bloco_controle|Selector0~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bloco_controle|state.S0~regout\);

-- Location: LCCOMB_X24_Y31_N30
\four_bit|PL1|var[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PL1|var[3]~3_combout\ = (\four_bit|PL1|var\(4) & \bloco_controle|state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|PL1|var\(4),
	datac => \bloco_controle|state.S5~regout\,
	combout => \four_bit|PL1|var[3]~3_combout\);

-- Location: LCFF_X24_Y31_N31
\four_bit|PL1|var[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PL1|var[3]~3_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PL1|var\(3));

-- Location: LCCOMB_X24_Y31_N28
\four_bit|PL1|var[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PL1|var[2]~2_combout\ = (\bloco_controle|state.S5~regout\ & \four_bit|PL1|var\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S5~regout\,
	datad => \four_bit|PL1|var\(3),
	combout => \four_bit|PL1|var[2]~2_combout\);

-- Location: LCFF_X24_Y31_N29
\four_bit|PL1|var[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PL1|var[2]~2_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PL1|var\(2));

-- Location: LCCOMB_X24_Y31_N22
\four_bit|PL1|var[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PL1|var[1]~1_combout\ = (\bloco_controle|state.S5~regout\ & \four_bit|PL1|var\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S5~regout\,
	datad => \four_bit|PL1|var\(2),
	combout => \four_bit|PL1|var[1]~1_combout\);

-- Location: LCFF_X24_Y31_N23
\four_bit|PL1|var[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PL1|var[1]~1_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PL1|var\(1));

-- Location: LCCOMB_X24_Y31_N4
\four_bit|PL1|var[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PL1|var[0]~0_combout\ = (\bloco_controle|state.S5~regout\ & \four_bit|PL1|var\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S5~regout\,
	datad => \four_bit|PL1|var\(1),
	combout => \four_bit|PL1|var[0]~0_combout\);

-- Location: LCFF_X24_Y31_N5
\four_bit|PL1|var[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PL1|var[0]~0_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PL1|var\(0));

-- Location: LCFF_X24_Y31_N25
\four_bit|regMult|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \four_bit|PL1|var\(0),
	sload => VCC,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(0));

-- Location: LCCOMB_X24_Y31_N18
\four_bit|regMult|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regMult|q[1]~feeder_combout\ = \four_bit|PL1|var\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \four_bit|PL1|var\(1),
	combout => \four_bit|regMult|q[1]~feeder_combout\);

-- Location: LCFF_X24_Y31_N19
\four_bit|regMult|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regMult|q[1]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(1));

-- Location: LCCOMB_X24_Y31_N12
\four_bit|regMult|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regMult|q[2]~feeder_combout\ = \four_bit|PL1|var\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \four_bit|PL1|var\(2),
	combout => \four_bit|regMult|q[2]~feeder_combout\);

-- Location: LCFF_X24_Y31_N13
\four_bit|regMult|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regMult|q[2]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(2));

-- Location: LCCOMB_X24_Y31_N2
\four_bit|regMult|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regMult|q[3]~feeder_combout\ = \four_bit|PL1|var\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \four_bit|PL1|var\(3),
	combout => \four_bit|regMult|q[3]~feeder_combout\);

-- Location: LCFF_X24_Y31_N3
\four_bit|regMult|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regMult|q[3]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(3));

-- Location: LCCOMB_X24_Y31_N6
\four_bit|PL1|var[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PL1|var[5]~5_combout\ = (\four_bit|PL1|var\(6) & \bloco_controle|state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|PL1|var\(6),
	datac => \bloco_controle|state.S5~regout\,
	combout => \four_bit|PL1|var[5]~5_combout\);

-- Location: LCFF_X24_Y31_N7
\four_bit|PL1|var[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PL1|var[5]~5_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PL1|var\(5));

-- Location: LCCOMB_X24_Y31_N16
\four_bit|PL1|var[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PL1|var[4]~4_combout\ = (\bloco_controle|state.S5~regout\ & \four_bit|PL1|var\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S5~regout\,
	datad => \four_bit|PL1|var\(5),
	combout => \four_bit|PL1|var[4]~4_combout\);

-- Location: LCFF_X24_Y31_N17
\four_bit|PL1|var[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PL1|var[4]~4_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PL1|var\(4));

-- Location: LCFF_X24_Y31_N9
\four_bit|regMult|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \four_bit|PL1|var\(4),
	sload => VCC,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(4));

-- Location: LCCOMB_X24_Y31_N26
\four_bit|regMult|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regMult|q[5]~feeder_combout\ = \four_bit|PL1|var\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \four_bit|PL1|var\(5),
	combout => \four_bit|regMult|q[5]~feeder_combout\);

-- Location: LCFF_X24_Y31_N27
\four_bit|regMult|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regMult|q[5]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(5));

-- Location: LCCOMB_X29_Y31_N14
\four_bit|soma|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|soma|Add0~0_combout\ = (\four_bit|PH1|var\(0) & (\four_bit|regB|q\(0) $ (VCC))) # (!\four_bit|PH1|var\(0) & (\four_bit|regB|q\(0) & VCC))
-- \four_bit|soma|Add0~1\ = CARRY((\four_bit|PH1|var\(0) & \four_bit|regB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|PH1|var\(0),
	datab => \four_bit|regB|q\(0),
	datad => VCC,
	combout => \four_bit|soma|Add0~0_combout\,
	cout => \four_bit|soma|Add0~1\);

-- Location: LCCOMB_X29_Y31_N12
\four_bit|PH1|var[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|var[0]~16_combout\ = (\bloco_controle|state.S5~regout\ & (\four_bit|PH1|var\(1))) # (!\bloco_controle|state.S5~regout\ & (((!\bloco_controle|state.S1~regout\ & \four_bit|soma|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|PH1|var\(1),
	datab => \bloco_controle|state.S5~regout\,
	datac => \bloco_controle|state.S1~regout\,
	datad => \four_bit|soma|Add0~0_combout\,
	combout => \four_bit|PH1|var[0]~16_combout\);

-- Location: LCCOMB_X29_Y31_N8
\four_bit|PH1|var[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|var[0]~14_combout\ = \bloco_controle|state.S5~regout\ $ (((\bloco_controle|state.S4~regout\) # (\bloco_controle|state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S4~regout\,
	datab => \bloco_controle|state.S5~regout\,
	datad => \bloco_controle|state.S1~regout\,
	combout => \four_bit|PH1|var[0]~14_combout\);

-- Location: LCFF_X29_Y31_N13
\four_bit|PH1|var[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PH1|var[0]~16_combout\,
	ena => \four_bit|PH1|var[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PH1|var\(0));

-- Location: LCCOMB_X31_Y31_N24
\four_bit|PH1|srOUT~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|srOUT~feeder_combout\ = \four_bit|PH1|var\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \four_bit|PH1|var\(0),
	combout => \four_bit|PH1|srOUT~feeder_combout\);

-- Location: LCFF_X31_Y31_N25
\four_bit|PH1|srOUT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PH1|srOUT~feeder_combout\,
	ena => \bloco_controle|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PH1|srOUT~regout\);

-- Location: LCCOMB_X28_Y31_N20
\four_bit|PL1|var[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PL1|var[7]~7_combout\ = (\bloco_controle|state.S5~regout\ & \four_bit|PH1|srOUT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|state.S5~regout\,
	datad => \four_bit|PH1|srOUT~regout\,
	combout => \four_bit|PL1|var[7]~7_combout\);

-- Location: LCFF_X28_Y31_N21
\four_bit|PL1|var[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PL1|var[7]~7_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PL1|var\(7));

-- Location: LCCOMB_X24_Y31_N20
\four_bit|PL1|var[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PL1|var[6]~6_combout\ = (\bloco_controle|state.S5~regout\ & \four_bit|PL1|var\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|state.S5~regout\,
	datad => \four_bit|PL1|var\(7),
	combout => \four_bit|PL1|var[6]~6_combout\);

-- Location: LCFF_X24_Y31_N21
\four_bit|PL1|var[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PL1|var[6]~6_combout\,
	ena => \four_bit|regA|var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PL1|var\(6));

-- Location: LCFF_X24_Y31_N1
\four_bit|regMult|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \four_bit|PL1|var\(6),
	sload => VCC,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(6));

-- Location: LCCOMB_X24_Y31_N10
\four_bit|regMult|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regMult|q[7]~feeder_combout\ = \four_bit|PL1|var\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \four_bit|PL1|var\(7),
	combout => \four_bit|regMult|q[7]~feeder_combout\);

-- Location: LCFF_X24_Y31_N11
\four_bit|regMult|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regMult|q[7]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(7));

-- Location: LCFF_X32_Y31_N21
\four_bit|regMult|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \four_bit|PH1|var\(0),
	sload => VCC,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(8));

-- Location: LCCOMB_X29_Y31_N16
\four_bit|soma|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|soma|Add0~2_combout\ = (\four_bit|regB|q\(1) & ((\four_bit|PH1|var\(1) & (\four_bit|soma|Add0~1\ & VCC)) # (!\four_bit|PH1|var\(1) & (!\four_bit|soma|Add0~1\)))) # (!\four_bit|regB|q\(1) & ((\four_bit|PH1|var\(1) & (!\four_bit|soma|Add0~1\)) # 
-- (!\four_bit|PH1|var\(1) & ((\four_bit|soma|Add0~1\) # (GND)))))
-- \four_bit|soma|Add0~3\ = CARRY((\four_bit|regB|q\(1) & (!\four_bit|PH1|var\(1) & !\four_bit|soma|Add0~1\)) # (!\four_bit|regB|q\(1) & ((!\four_bit|soma|Add0~1\) # (!\four_bit|PH1|var\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(1),
	datab => \four_bit|PH1|var\(1),
	datad => VCC,
	cin => \four_bit|soma|Add0~1\,
	combout => \four_bit|soma|Add0~2_combout\,
	cout => \four_bit|soma|Add0~3\);

-- Location: LCCOMB_X29_Y31_N18
\four_bit|soma|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|soma|Add0~4_combout\ = ((\four_bit|regB|q\(2) $ (\four_bit|PH1|var\(2) $ (!\four_bit|soma|Add0~3\)))) # (GND)
-- \four_bit|soma|Add0~5\ = CARRY((\four_bit|regB|q\(2) & ((\four_bit|PH1|var\(2)) # (!\four_bit|soma|Add0~3\))) # (!\four_bit|regB|q\(2) & (\four_bit|PH1|var\(2) & !\four_bit|soma|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(2),
	datab => \four_bit|PH1|var\(2),
	datad => VCC,
	cin => \four_bit|soma|Add0~3\,
	combout => \four_bit|soma|Add0~4_combout\,
	cout => \four_bit|soma|Add0~5\);

-- Location: LCCOMB_X29_Y31_N20
\four_bit|soma|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|soma|Add0~6_combout\ = (\four_bit|regB|q\(3) & ((\four_bit|PH1|var\(3) & (\four_bit|soma|Add0~5\ & VCC)) # (!\four_bit|PH1|var\(3) & (!\four_bit|soma|Add0~5\)))) # (!\four_bit|regB|q\(3) & ((\four_bit|PH1|var\(3) & (!\four_bit|soma|Add0~5\)) # 
-- (!\four_bit|PH1|var\(3) & ((\four_bit|soma|Add0~5\) # (GND)))))
-- \four_bit|soma|Add0~7\ = CARRY((\four_bit|regB|q\(3) & (!\four_bit|PH1|var\(3) & !\four_bit|soma|Add0~5\)) # (!\four_bit|regB|q\(3) & ((!\four_bit|soma|Add0~5\) # (!\four_bit|PH1|var\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(3),
	datab => \four_bit|PH1|var\(3),
	datad => VCC,
	cin => \four_bit|soma|Add0~5\,
	combout => \four_bit|soma|Add0~6_combout\,
	cout => \four_bit|soma|Add0~7\);

-- Location: LCCOMB_X29_Y31_N22
\four_bit|soma|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|soma|Add0~8_combout\ = ((\four_bit|regB|q\(4) $ (\four_bit|PH1|var\(4) $ (!\four_bit|soma|Add0~7\)))) # (GND)
-- \four_bit|soma|Add0~9\ = CARRY((\four_bit|regB|q\(4) & ((\four_bit|PH1|var\(4)) # (!\four_bit|soma|Add0~7\))) # (!\four_bit|regB|q\(4) & (\four_bit|PH1|var\(4) & !\four_bit|soma|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(4),
	datab => \four_bit|PH1|var\(4),
	datad => VCC,
	cin => \four_bit|soma|Add0~7\,
	combout => \four_bit|soma|Add0~8_combout\,
	cout => \four_bit|soma|Add0~9\);

-- Location: LCCOMB_X29_Y31_N24
\four_bit|soma|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|soma|Add0~10_combout\ = (\four_bit|regB|q\(5) & ((\four_bit|PH1|var\(5) & (\four_bit|soma|Add0~9\ & VCC)) # (!\four_bit|PH1|var\(5) & (!\four_bit|soma|Add0~9\)))) # (!\four_bit|regB|q\(5) & ((\four_bit|PH1|var\(5) & (!\four_bit|soma|Add0~9\)) # 
-- (!\four_bit|PH1|var\(5) & ((\four_bit|soma|Add0~9\) # (GND)))))
-- \four_bit|soma|Add0~11\ = CARRY((\four_bit|regB|q\(5) & (!\four_bit|PH1|var\(5) & !\four_bit|soma|Add0~9\)) # (!\four_bit|regB|q\(5) & ((!\four_bit|soma|Add0~9\) # (!\four_bit|PH1|var\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|regB|q\(5),
	datab => \four_bit|PH1|var\(5),
	datad => VCC,
	cin => \four_bit|soma|Add0~9\,
	combout => \four_bit|soma|Add0~10_combout\,
	cout => \four_bit|soma|Add0~11\);

-- Location: LCCOMB_X29_Y31_N4
\four_bit|PH1|var[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|var[5]~21_combout\ = (\bloco_controle|state.S5~regout\ & (\four_bit|PH1|var\(6))) # (!\bloco_controle|state.S5~regout\ & (((!\bloco_controle|state.S1~regout\ & \four_bit|soma|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|PH1|var\(6),
	datab => \bloco_controle|state.S5~regout\,
	datac => \bloco_controle|state.S1~regout\,
	datad => \four_bit|soma|Add0~10_combout\,
	combout => \four_bit|PH1|var[5]~21_combout\);

-- Location: LCFF_X29_Y31_N5
\four_bit|PH1|var[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PH1|var[5]~21_combout\,
	ena => \four_bit|PH1|var[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PH1|var\(5));

-- Location: LCCOMB_X30_Y31_N14
\four_bit|PH1|var[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|var[4]~20_combout\ = (\bloco_controle|state.S5~regout\ & (((\four_bit|PH1|var\(5))))) # (!\bloco_controle|state.S5~regout\ & (!\bloco_controle|state.S1~regout\ & ((\four_bit|soma|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datab => \bloco_controle|state.S5~regout\,
	datac => \four_bit|PH1|var\(5),
	datad => \four_bit|soma|Add0~8_combout\,
	combout => \four_bit|PH1|var[4]~20_combout\);

-- Location: LCFF_X30_Y31_N15
\four_bit|PH1|var[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PH1|var[4]~20_combout\,
	ena => \four_bit|PH1|var[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PH1|var\(4));

-- Location: LCCOMB_X29_Y31_N2
\four_bit|PH1|var[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|var[3]~19_combout\ = (\bloco_controle|state.S5~regout\ & (\four_bit|PH1|var\(4))) # (!\bloco_controle|state.S5~regout\ & (((!\bloco_controle|state.S1~regout\ & \four_bit|soma|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S5~regout\,
	datab => \four_bit|PH1|var\(4),
	datac => \bloco_controle|state.S1~regout\,
	datad => \four_bit|soma|Add0~6_combout\,
	combout => \four_bit|PH1|var[3]~19_combout\);

-- Location: LCFF_X29_Y31_N3
\four_bit|PH1|var[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PH1|var[3]~19_combout\,
	ena => \four_bit|PH1|var[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PH1|var\(3));

-- Location: LCCOMB_X29_Y31_N0
\four_bit|PH1|var[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|var[2]~18_combout\ = (\bloco_controle|state.S5~regout\ & (((\four_bit|PH1|var\(3))))) # (!\bloco_controle|state.S5~regout\ & (!\bloco_controle|state.S1~regout\ & ((\four_bit|soma|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datab => \four_bit|PH1|var\(3),
	datac => \bloco_controle|state.S5~regout\,
	datad => \four_bit|soma|Add0~4_combout\,
	combout => \four_bit|PH1|var[2]~18_combout\);

-- Location: LCFF_X29_Y31_N1
\four_bit|PH1|var[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PH1|var[2]~18_combout\,
	ena => \four_bit|PH1|var[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PH1|var\(2));

-- Location: LCCOMB_X29_Y31_N30
\four_bit|PH1|var[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|var[1]~17_combout\ = (\bloco_controle|state.S5~regout\ & (((\four_bit|PH1|var\(2))))) # (!\bloco_controle|state.S5~regout\ & (!\bloco_controle|state.S1~regout\ & ((\four_bit|soma|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datab => \four_bit|PH1|var\(2),
	datac => \bloco_controle|state.S5~regout\,
	datad => \four_bit|soma|Add0~2_combout\,
	combout => \four_bit|PH1|var[1]~17_combout\);

-- Location: LCFF_X29_Y31_N31
\four_bit|PH1|var[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PH1|var[1]~17_combout\,
	ena => \four_bit|PH1|var[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PH1|var\(1));

-- Location: LCCOMB_X32_Y31_N6
\four_bit|regMult|q[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regMult|q[9]~feeder_combout\ = \four_bit|PH1|var\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \four_bit|PH1|var\(1),
	combout => \four_bit|regMult|q[9]~feeder_combout\);

-- Location: LCFF_X32_Y31_N7
\four_bit|regMult|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regMult|q[9]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(9));

-- Location: LCFF_X32_Y31_N25
\four_bit|regMult|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \four_bit|PH1|var\(2),
	sload => VCC,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(10));

-- Location: LCFF_X32_Y31_N23
\four_bit|regMult|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \four_bit|PH1|var\(3),
	sload => VCC,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(11));

-- Location: LCCOMB_X32_Y31_N12
\four_bit|regMult|q[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regMult|q[12]~feeder_combout\ = \four_bit|PH1|var\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \four_bit|PH1|var\(4),
	combout => \four_bit|regMult|q[12]~feeder_combout\);

-- Location: LCFF_X32_Y31_N13
\four_bit|regMult|q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regMult|q[12]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(12));

-- Location: LCFF_X32_Y31_N19
\four_bit|regMult|q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \four_bit|PH1|var\(5),
	sload => VCC,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(13));

-- Location: LCCOMB_X29_Y31_N26
\four_bit|soma|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|soma|Add0~12_combout\ = ((\four_bit|PH1|var\(6) $ (\four_bit|regB|q\(6) $ (!\four_bit|soma|Add0~11\)))) # (GND)
-- \four_bit|soma|Add0~13\ = CARRY((\four_bit|PH1|var\(6) & ((\four_bit|regB|q\(6)) # (!\four_bit|soma|Add0~11\))) # (!\four_bit|PH1|var\(6) & (\four_bit|regB|q\(6) & !\four_bit|soma|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \four_bit|PH1|var\(6),
	datab => \four_bit|regB|q\(6),
	datad => VCC,
	cin => \four_bit|soma|Add0~11\,
	combout => \four_bit|soma|Add0~12_combout\,
	cout => \four_bit|soma|Add0~13\);

-- Location: LCCOMB_X29_Y31_N28
\four_bit|soma|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|soma|Add0~14_combout\ = \four_bit|regB|q\(7) $ (\four_bit|soma|Add0~13\ $ (\four_bit|PH1|var\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \four_bit|regB|q\(7),
	datad => \four_bit|PH1|var\(7),
	cin => \four_bit|soma|Add0~13\,
	combout => \four_bit|soma|Add0~14_combout\);

-- Location: LCCOMB_X30_Y31_N24
\four_bit|PH1|var[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|var[7]~15_combout\ = (!\bloco_controle|state.S1~regout\ & ((\bloco_controle|state.S4~regout\ & ((\four_bit|soma|Add0~14_combout\))) # (!\bloco_controle|state.S4~regout\ & (\four_bit|PH1|var\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S4~regout\,
	datab => \bloco_controle|state.S1~regout\,
	datac => \four_bit|PH1|var\(7),
	datad => \four_bit|soma|Add0~14_combout\,
	combout => \four_bit|PH1|var[7]~15_combout\);

-- Location: LCFF_X30_Y31_N25
\four_bit|PH1|var[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PH1|var[7]~15_combout\,
	sclr => \bloco_controle|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PH1|var\(7));

-- Location: LCCOMB_X29_Y31_N10
\four_bit|PH1|var[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|PH1|var[6]~22_combout\ = (\bloco_controle|state.S5~regout\ & (((\four_bit|PH1|var\(7))))) # (!\bloco_controle|state.S5~regout\ & (!\bloco_controle|state.S1~regout\ & ((\four_bit|soma|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|state.S1~regout\,
	datab => \four_bit|PH1|var\(7),
	datac => \bloco_controle|state.S5~regout\,
	datad => \four_bit|soma|Add0~12_combout\,
	combout => \four_bit|PH1|var[6]~22_combout\);

-- Location: LCFF_X29_Y31_N11
\four_bit|PH1|var[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|PH1|var[6]~22_combout\,
	ena => \four_bit|PH1|var[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|PH1|var\(6));

-- Location: LCCOMB_X32_Y31_N0
\four_bit|regMult|q[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \four_bit|regMult|q[14]~feeder_combout\ = \four_bit|PH1|var\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \four_bit|PH1|var\(6),
	combout => \four_bit|regMult|q[14]~feeder_combout\);

-- Location: LCFF_X32_Y31_N1
\four_bit|regMult|q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	datain => \four_bit|regMult|q[14]~feeder_combout\,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(14));

-- Location: LCFF_X32_Y31_N3
\four_bit|regMult|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ck~clkctrl_outclk\,
	sdata => \four_bit|PH1|var\(7),
	sload => VCC,
	ena => \bloco_controle|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \four_bit|regMult|q\(15));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \four_bit|regMult|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \four_bit|regMult|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \four_bit|regMult|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(2));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \four_bit|regMult|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(3));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \four_bit|regMult|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(4));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \four_bit|regMult|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(5));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \four_bit|regMult|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(6));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \four_bit|regMult|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(7));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[8]~I\ : cycloneii_io
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
	datain => \four_bit|regMult|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(8));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[9]~I\ : cycloneii_io
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
	datain => \four_bit|regMult|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(9));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[10]~I\ : cycloneii_io
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
	datain => \four_bit|regMult|q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(10));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[11]~I\ : cycloneii_io
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
	datain => \four_bit|regMult|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(11));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[12]~I\ : cycloneii_io
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
	datain => \four_bit|regMult|q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(12));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[13]~I\ : cycloneii_io
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
	datain => \four_bit|regMult|q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(13));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[14]~I\ : cycloneii_io
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
	datain => \four_bit|regMult|q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(14));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\mult[15]~I\ : cycloneii_io
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
	datain => \four_bit|regMult|q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mult(15));
END structure;


