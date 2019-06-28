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

-- DATE "06/27/2019 18:24:41"

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

ENTITY 	RegAC IS
    PORT (
	clk : IN std_logic;
	clear : IN std_logic;
	load : IN std_logic;
	preset : IN std_logic;
	dado_ULA : IN std_logic_vector(7 DOWNTO 0);
	saida_AC : OUT std_logic_vector(7 DOWNTO 0)
	);
END RegAC;

-- Design Ports Information
-- clear	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- preset	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- saida_AC[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_AC[1]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_AC[2]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_AC[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_AC[4]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_AC[5]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_AC[6]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_AC[7]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dado_ULA[0]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado_ULA[1]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado_ULA[2]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado_ULA[3]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado_ULA[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado_ULA[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado_ULA[6]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado_ULA[7]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RegAC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_preset : std_logic;
SIGNAL ww_dado_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_AC : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \RFOR:0:FFN|qsignal~feeder_combout\ : std_logic;
SIGNAL \load~combout\ : std_logic;
SIGNAL \RFOR:0:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:1:FFN|qsignal~feeder_combout\ : std_logic;
SIGNAL \RFOR:1:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:2:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:3:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:4:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:5:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:6:FFN|qsignal~feeder_combout\ : std_logic;
SIGNAL \RFOR:6:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:7:FFN|qsignal~feeder_combout\ : std_logic;
SIGNAL \RFOR:7:FFN|qsignal~regout\ : std_logic;
SIGNAL \dado_ULA~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clear <= clear;
ww_load <= load;
ww_preset <= preset;
ww_dado_ULA <= dado_ULA;
saida_AC <= ww_saida_AC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

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

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ULA[0]~I\ : cycloneii_io
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
	padio => ww_dado_ULA(0),
	combout => \dado_ULA~combout\(0));

-- Location: LCCOMB_X63_Y29_N0
\RFOR:0:FFN|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:0:FFN|qsignal~feeder_combout\ = \dado_ULA~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado_ULA~combout\(0),
	combout => \RFOR:0:FFN|qsignal~feeder_combout\);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\load~I\ : cycloneii_io
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
	padio => ww_load,
	combout => \load~combout\);

-- Location: LCFF_X63_Y29_N1
\RFOR:0:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:0:FFN|qsignal~feeder_combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:0:FFN|qsignal~regout\);

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ULA[1]~I\ : cycloneii_io
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
	padio => ww_dado_ULA(1),
	combout => \dado_ULA~combout\(1));

-- Location: LCCOMB_X63_Y29_N18
\RFOR:1:FFN|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:1:FFN|qsignal~feeder_combout\ = \dado_ULA~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado_ULA~combout\(1),
	combout => \RFOR:1:FFN|qsignal~feeder_combout\);

-- Location: LCFF_X63_Y29_N19
\RFOR:1:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:1:FFN|qsignal~feeder_combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:1:FFN|qsignal~regout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ULA[2]~I\ : cycloneii_io
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
	padio => ww_dado_ULA(2),
	combout => \dado_ULA~combout\(2));

-- Location: LCFF_X63_Y29_N21
\RFOR:2:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \dado_ULA~combout\(2),
	sload => VCC,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:2:FFN|qsignal~regout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ULA[3]~I\ : cycloneii_io
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
	padio => ww_dado_ULA(3),
	combout => \dado_ULA~combout\(3));

-- Location: LCFF_X63_Y29_N23
\RFOR:3:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \dado_ULA~combout\(3),
	sload => VCC,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:3:FFN|qsignal~regout\);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ULA[4]~I\ : cycloneii_io
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
	padio => ww_dado_ULA(4),
	combout => \dado_ULA~combout\(4));

-- Location: LCFF_X63_Y29_N17
\RFOR:4:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \dado_ULA~combout\(4),
	sload => VCC,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:4:FFN|qsignal~regout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ULA[5]~I\ : cycloneii_io
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
	padio => ww_dado_ULA(5),
	combout => \dado_ULA~combout\(5));

-- Location: LCFF_X63_Y29_N11
\RFOR:5:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \dado_ULA~combout\(5),
	sload => VCC,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:5:FFN|qsignal~regout\);

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ULA[6]~I\ : cycloneii_io
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
	padio => ww_dado_ULA(6),
	combout => \dado_ULA~combout\(6));

-- Location: LCCOMB_X63_Y29_N12
\RFOR:6:FFN|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:6:FFN|qsignal~feeder_combout\ = \dado_ULA~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado_ULA~combout\(6),
	combout => \RFOR:6:FFN|qsignal~feeder_combout\);

-- Location: LCFF_X63_Y29_N13
\RFOR:6:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:6:FFN|qsignal~feeder_combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:6:FFN|qsignal~regout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado_ULA[7]~I\ : cycloneii_io
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
	padio => ww_dado_ULA(7),
	combout => \dado_ULA~combout\(7));

-- Location: LCCOMB_X63_Y29_N6
\RFOR:7:FFN|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:7:FFN|qsignal~feeder_combout\ = \dado_ULA~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado_ULA~combout\(7),
	combout => \RFOR:7:FFN|qsignal~feeder_combout\);

-- Location: LCFF_X63_Y29_N7
\RFOR:7:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:7:FFN|qsignal~feeder_combout\,
	ena => \load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:7:FFN|qsignal~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clear~I\ : cycloneii_io
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
	padio => ww_clear);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\preset~I\ : cycloneii_io
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
	padio => ww_preset);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_AC[0]~I\ : cycloneii_io
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
	datain => \RFOR:0:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_AC(0));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_AC[1]~I\ : cycloneii_io
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
	datain => \RFOR:1:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_AC(1));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_AC[2]~I\ : cycloneii_io
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
	datain => \RFOR:2:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_AC(2));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_AC[3]~I\ : cycloneii_io
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
	datain => \RFOR:3:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_AC(3));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_AC[4]~I\ : cycloneii_io
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
	datain => \RFOR:4:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_AC(4));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_AC[5]~I\ : cycloneii_io
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
	datain => \RFOR:5:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_AC(5));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_AC[6]~I\ : cycloneii_io
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
	datain => \RFOR:6:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_AC(6));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_AC[7]~I\ : cycloneii_io
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
	datain => \RFOR:7:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_AC(7));
END structure;


