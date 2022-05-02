-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "12/09/2021 11:37:04"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nsubburaj_crosswalk_vhdl IS
    PORT (
	clk : IN std_logic;
	BUTTON : IN std_logic;
	SGREEN : OUT std_logic;
	SYELLOW : OUT std_logic;
	SRED : OUT std_logic;
	WRED : OUT std_logic;
	WGREEN : OUT std_logic
	);
END nsubburaj_crosswalk_vhdl;

-- Design Ports Information
-- SGREEN	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SYELLOW	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRED	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRED	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WGREEN	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nsubburaj_crosswalk_vhdl IS
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
SIGNAL ww_BUTTON : std_logic;
SIGNAL ww_SGREEN : std_logic;
SIGNAL ww_SYELLOW : std_logic;
SIGNAL ww_SRED : std_logic;
SIGNAL ww_WRED : std_logic;
SIGNAL ww_WGREEN : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \state.Green~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.GreenWait~q\ : std_logic;
SIGNAL \state.RedWait~q\ : std_logic;
SIGNAL \state.YellowWait~q\ : std_logic;
SIGNAL \state.GreenWait~DUPLICATE_q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.Yellow~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.YellowWait~DUPLICATE_q\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \state.Red~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state.RedWait~DUPLICATE_q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.Green~DUPLICATE_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \SGREEN~reg0_q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \SYELLOW~reg0_q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \SRED~reg0_q\ : std_logic;
SIGNAL \BUTTON~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \WRED~0_combout\ : std_logic;
SIGNAL \WRED~1_combout\ : std_logic;
SIGNAL \WRED~reg0_q\ : std_logic;
SIGNAL \WGREEN~0_combout\ : std_logic;
SIGNAL \WGREEN~reg0_q\ : std_logic;
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SYELLOW~reg0_q\ : std_logic;
SIGNAL \ALT_INV_SGREEN~reg0_q\ : std_logic;
SIGNAL \ALT_INV_SRED~reg0_q\ : std_logic;
SIGNAL \ALT_INV_WRED~reg0_q\ : std_logic;
SIGNAL \ALT_INV_WGREEN~reg0_q\ : std_logic;
SIGNAL \ALT_INV_state.YellowWait~q\ : std_logic;
SIGNAL \ALT_INV_state.GreenWait~q\ : std_logic;
SIGNAL \ALT_INV_state.RedWait~q\ : std_logic;
SIGNAL \ALT_INV_state.Green~q\ : std_logic;
SIGNAL \ALT_INV_state.Yellow~q\ : std_logic;
SIGNAL \ALT_INV_state.Red~q\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.Green~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.RedWait~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.GreenWait~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.YellowWait~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_BUTTON~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_BUTTON <= BUTTON;
SGREEN <= ww_SGREEN;
SYELLOW <= ww_SYELLOW;
SRED <= ww_SRED;
WRED <= ww_WRED;
WGREEN <= ww_WGREEN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_count(3) <= NOT count(3);
\ALT_INV_SYELLOW~reg0_q\ <= NOT \SYELLOW~reg0_q\;
\ALT_INV_SGREEN~reg0_q\ <= NOT \SGREEN~reg0_q\;
\ALT_INV_SRED~reg0_q\ <= NOT \SRED~reg0_q\;
\ALT_INV_WRED~reg0_q\ <= NOT \WRED~reg0_q\;
\ALT_INV_WGREEN~reg0_q\ <= NOT \WGREEN~reg0_q\;
\ALT_INV_state.YellowWait~q\ <= NOT \state.YellowWait~q\;
\ALT_INV_state.GreenWait~q\ <= NOT \state.GreenWait~q\;
\ALT_INV_state.RedWait~q\ <= NOT \state.RedWait~q\;
\ALT_INV_state.Green~q\ <= NOT \state.Green~q\;
\ALT_INV_state.Yellow~q\ <= NOT \state.Yellow~q\;
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(0) <= NOT count(0);
\ALT_INV_state.Red~q\ <= NOT \state.Red~q\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
ALT_INV_count(1) <= NOT count(1);
\ALT_INV_count[0]~DUPLICATE_q\ <= NOT \count[0]~DUPLICATE_q\;
\ALT_INV_count[1]~DUPLICATE_q\ <= NOT \count[1]~DUPLICATE_q\;
\ALT_INV_state.Green~DUPLICATE_q\ <= NOT \state.Green~DUPLICATE_q\;
\ALT_INV_state.RedWait~DUPLICATE_q\ <= NOT \state.RedWait~DUPLICATE_q\;
\ALT_INV_state.GreenWait~DUPLICATE_q\ <= NOT \state.GreenWait~DUPLICATE_q\;
\ALT_INV_state.YellowWait~DUPLICATE_q\ <= NOT \state.YellowWait~DUPLICATE_q\;
\ALT_INV_BUTTON~input_o\ <= NOT \BUTTON~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\SGREEN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SGREEN~reg0_q\,
	devoe => ww_devoe,
	o => ww_SGREEN);

-- Location: IOOBUF_X60_Y0_N2
\SYELLOW~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SYELLOW~reg0_q\,
	devoe => ww_devoe,
	o => ww_SYELLOW);

-- Location: IOOBUF_X52_Y0_N19
\SRED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SRED~reg0_q\,
	devoe => ww_devoe,
	o => ww_SRED);

-- Location: IOOBUF_X30_Y0_N2
\WRED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WRED~reg0_q\,
	devoe => ww_devoe,
	o => ww_WRED);

-- Location: IOOBUF_X80_Y0_N2
\WGREEN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WGREEN~reg0_q\,
	devoe => ww_devoe,
	o => ww_WGREEN);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: FF_X31_Y1_N14
\state.Green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Green~q\);

-- Location: LABCELL_X31_Y1_N30
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \state.GreenWait~q\ & ( count(3) ) ) # ( !\state.GreenWait~q\ & ( count(3) & ( !\state.Green~q\ ) ) ) # ( \state.GreenWait~q\ & ( !count(3) & ( (!\count[0]~DUPLICATE_q\) # (((!\state.Green~q\) # (\count[1]~DUPLICATE_q\)) # 
-- (count(2))) ) ) ) # ( !\state.GreenWait~q\ & ( !count(3) & ( !\state.Green~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111011111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datab => ALT_INV_count(2),
	datac => \ALT_INV_count[1]~DUPLICATE_q\,
	datad => \ALT_INV_state.Green~q\,
	datae => \ALT_INV_state.GreenWait~q\,
	dataf => ALT_INV_count(3),
	combout => \Selector3~0_combout\);

-- Location: FF_X31_Y1_N32
\state.GreenWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.GreenWait~q\);

-- Location: FF_X30_Y1_N14
\state.RedWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RedWait~q\);

-- Location: FF_X30_Y1_N56
\state.YellowWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.YellowWait~q\);

-- Location: FF_X31_Y1_N31
\state.GreenWait~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.GreenWait~DUPLICATE_q\);

-- Location: LABCELL_X30_Y1_N42
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( !\count[1]~DUPLICATE_q\ & ( \state.GreenWait~DUPLICATE_q\ & ( (!count(3) & (\count[0]~DUPLICATE_q\ & !count(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(3),
	datac => \ALT_INV_count[0]~DUPLICATE_q\,
	datad => ALT_INV_count(2),
	datae => \ALT_INV_count[1]~DUPLICATE_q\,
	dataf => \ALT_INV_state.GreenWait~DUPLICATE_q\,
	combout => \Selector2~1_combout\);

-- Location: FF_X30_Y1_N43
\state.Yellow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Yellow~q\);

-- Location: LABCELL_X30_Y1_N54
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \state.YellowWait~q\ & ( \state.Yellow~q\ ) ) # ( !\state.YellowWait~q\ & ( \state.Yellow~q\ ) ) # ( \state.YellowWait~q\ & ( !\state.Yellow~q\ & ( (!\count[0]~DUPLICATE_q\) # (((!\count[1]~DUPLICATE_q\) # (count(3))) # 
-- (count(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(3),
	datad => \ALT_INV_count[1]~DUPLICATE_q\,
	datae => \ALT_INV_state.YellowWait~q\,
	dataf => \ALT_INV_state.Yellow~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X30_Y1_N55
\state.YellowWait~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.YellowWait~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N6
WideOr1 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ( \state.Green~q\ & ( (!\state.Red~q\ & !\state.Yellow~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.Red~q\,
	datad => \ALT_INV_state.Yellow~q\,
	dataf => \ALT_INV_state.Green~q\,
	combout => \WideOr1~combout\);

-- Location: FF_X31_Y1_N49
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector13~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LABCELL_X31_Y1_N24
\Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = ( count(1) & ( !count(3) & ( (\count[0]~DUPLICATE_q\ & (\state.YellowWait~DUPLICATE_q\ & !count(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datac => \ALT_INV_state.YellowWait~DUPLICATE_q\,
	datad => ALT_INV_count(2),
	datae => ALT_INV_count(1),
	dataf => ALT_INV_count(3),
	combout => \Selector2~2_combout\);

-- Location: FF_X31_Y1_N26
\state.Red\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Red~q\);

-- Location: LABCELL_X30_Y1_N12
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \state.RedWait~q\ & ( \state.Red~q\ ) ) # ( !\state.RedWait~q\ & ( \state.Red~q\ ) ) # ( \state.RedWait~q\ & ( !\state.Red~q\ & ( (((!count(3)) # (\count[1]~DUPLICATE_q\)) # (count(2))) # (\count[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datab => ALT_INV_count(2),
	datac => ALT_INV_count(3),
	datad => \ALT_INV_count[1]~DUPLICATE_q\,
	datae => \ALT_INV_state.RedWait~q\,
	dataf => \ALT_INV_state.Red~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X30_Y1_N13
\state.RedWait~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RedWait~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N18
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( count(3) & ( \state.RedWait~DUPLICATE_q\ & ( (!\count[0]~DUPLICATE_q\ & (((\state.GreenWait~q\) # (\count[1]~DUPLICATE_q\)) # (count(2)))) # (\count[0]~DUPLICATE_q\ & ((!count(2)) # ((!\count[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- !count(3) & ( \state.RedWait~DUPLICATE_q\ & ( (\count[0]~DUPLICATE_q\ & (count(2) & \count[1]~DUPLICATE_q\)) ) ) ) # ( count(3) & ( !\state.RedWait~DUPLICATE_q\ & ( (!\count[0]~DUPLICATE_q\) # ((!count(2)) # (!\count[1]~DUPLICATE_q\)) ) ) ) # ( !count(3) 
-- & ( !\state.RedWait~DUPLICATE_q\ & ( (\count[0]~DUPLICATE_q\ & (count(2) & \count[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111101111111000000001000000010111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datab => ALT_INV_count(2),
	datac => \ALT_INV_count[1]~DUPLICATE_q\,
	datad => \ALT_INV_state.GreenWait~q\,
	datae => ALT_INV_count(3),
	dataf => \ALT_INV_state.RedWait~DUPLICATE_q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X31_Y1_N20
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: FF_X31_Y1_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector14~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LABCELL_X31_Y1_N57
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( count(2) & ( \state.RedWait~DUPLICATE_q\ & ( (!count(0)) # (!\count[1]~DUPLICATE_q\) ) ) ) # ( !count(2) & ( \state.RedWait~DUPLICATE_q\ & ( (count(0) & \count[1]~DUPLICATE_q\) ) ) ) # ( count(2) & ( !\state.RedWait~DUPLICATE_q\ 
-- & ( (!count(0)) # (!\count[1]~DUPLICATE_q\) ) ) ) # ( !count(2) & ( !\state.RedWait~DUPLICATE_q\ & ( (count(0) & (\count[1]~DUPLICATE_q\ & ((\state.GreenWait~q\) # (count(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011111111111100110000000000001100111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(3),
	datab => ALT_INV_count(0),
	datac => \ALT_INV_state.GreenWait~q\,
	datad => \ALT_INV_count[1]~DUPLICATE_q\,
	datae => ALT_INV_count(2),
	dataf => \ALT_INV_state.RedWait~DUPLICATE_q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X31_Y1_N59
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LABCELL_X31_Y1_N48
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( count(1) & ( count(3) & ( !\count[0]~DUPLICATE_q\ ) ) ) # ( !count(1) & ( count(3) & ( \count[0]~DUPLICATE_q\ ) ) ) # ( count(1) & ( !count(3) & ( !\count[0]~DUPLICATE_q\ ) ) ) # ( !count(1) & ( !count(3) & ( 
-- (\count[0]~DUPLICATE_q\ & ((!\state.GreenWait~q\) # (count(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(2),
	datac => \ALT_INV_count[0]~DUPLICATE_q\,
	datad => \ALT_INV_state.GreenWait~q\,
	datae => ALT_INV_count(1),
	dataf => ALT_INV_count(3),
	combout => \Selector13~0_combout\);

-- Location: FF_X31_Y1_N50
\count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector13~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N0
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( !count(0) & ( count(3) & ( (((!\state.RedWait~DUPLICATE_q\) # (\state.GreenWait~q\)) # (count(2))) # (\count[1]~DUPLICATE_q\) ) ) ) # ( !count(0) & ( !count(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[1]~DUPLICATE_q\,
	datab => ALT_INV_count(2),
	datac => \ALT_INV_state.RedWait~DUPLICATE_q\,
	datad => \ALT_INV_state.GreenWait~q\,
	datae => ALT_INV_count(0),
	dataf => ALT_INV_count(3),
	combout => \Selector14~0_combout\);

-- Location: FF_X31_Y1_N2
\count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector14~0_combout\,
	ena => \WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N12
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( count(1) & ( \state.RedWait~DUPLICATE_q\ ) ) # ( !count(1) & ( \state.RedWait~DUPLICATE_q\ & ( ((!count(3)) # (count(2))) # (\count[0]~DUPLICATE_q\) ) ) ) # ( count(1) & ( !\state.RedWait~DUPLICATE_q\ ) ) # ( !count(1) & ( 
-- !\state.RedWait~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datac => ALT_INV_count(3),
	datad => ALT_INV_count(2),
	datae => ALT_INV_count(1),
	dataf => \ALT_INV_state.RedWait~DUPLICATE_q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X31_Y1_N13
\state.Green~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Green~DUPLICATE_q\);

-- Location: LABCELL_X31_Y1_N42
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \SGREEN~reg0_q\ & ( \state.YellowWait~DUPLICATE_q\ ) ) # ( !\SGREEN~reg0_q\ & ( \state.YellowWait~DUPLICATE_q\ & ( !\state.Green~DUPLICATE_q\ ) ) ) # ( \SGREEN~reg0_q\ & ( !\state.YellowWait~DUPLICATE_q\ & ( 
-- (!\state.Green~DUPLICATE_q\) # ((\state.GreenWait~q\) # (\state.RedWait~DUPLICATE_q\)) ) ) ) # ( !\SGREEN~reg0_q\ & ( !\state.YellowWait~DUPLICATE_q\ & ( !\state.Green~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011111111111111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.Green~DUPLICATE_q\,
	datac => \ALT_INV_state.RedWait~DUPLICATE_q\,
	datad => \ALT_INV_state.GreenWait~q\,
	datae => \ALT_INV_SGREEN~reg0_q\,
	dataf => \ALT_INV_state.YellowWait~DUPLICATE_q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X31_Y1_N43
\SGREEN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SGREEN~reg0_q\);

-- Location: LABCELL_X31_Y1_N9
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \state.YellowWait~DUPLICATE_q\ & ( (\SYELLOW~reg0_q\) # (\state.Yellow~q\) ) ) # ( !\state.YellowWait~DUPLICATE_q\ & ( ((\SYELLOW~reg0_q\ & ((\state.GreenWait~q\) # (\state.RedWait~DUPLICATE_q\)))) # (\state.Yellow~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101111111010101010111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.Yellow~q\,
	datab => \ALT_INV_state.RedWait~DUPLICATE_q\,
	datac => \ALT_INV_state.GreenWait~q\,
	datad => \ALT_INV_SYELLOW~reg0_q\,
	dataf => \ALT_INV_state.YellowWait~DUPLICATE_q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X31_Y1_N10
\SYELLOW~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYELLOW~reg0_q\);

-- Location: LABCELL_X31_Y1_N39
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \SRED~reg0_q\ & ( \state.YellowWait~DUPLICATE_q\ ) ) # ( !\SRED~reg0_q\ & ( \state.YellowWait~DUPLICATE_q\ & ( \state.Red~q\ ) ) ) # ( \SRED~reg0_q\ & ( !\state.YellowWait~DUPLICATE_q\ & ( ((\state.RedWait~DUPLICATE_q\) # 
-- (\state.GreenWait~q\)) # (\state.Red~q\) ) ) ) # ( !\SRED~reg0_q\ & ( !\state.YellowWait~DUPLICATE_q\ & ( \state.Red~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.Red~q\,
	datac => \ALT_INV_state.GreenWait~q\,
	datad => \ALT_INV_state.RedWait~DUPLICATE_q\,
	datae => \ALT_INV_SRED~reg0_q\,
	dataf => \ALT_INV_state.YellowWait~DUPLICATE_q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X31_Y1_N40
\SRED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRED~reg0_q\);

-- Location: IOIBUF_X36_Y0_N1
\BUTTON~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON,
	o => \BUTTON~input_o\);

-- Location: LABCELL_X30_Y1_N33
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.YellowWait~q\ & ( \state.GreenWait~q\ & ( \WRED~reg0_q\ ) ) ) # ( !\state.YellowWait~q\ & ( \state.GreenWait~q\ & ( \WRED~reg0_q\ ) ) ) # ( \state.YellowWait~q\ & ( !\state.GreenWait~q\ & ( \WRED~reg0_q\ ) ) ) # ( 
-- !\state.YellowWait~q\ & ( !\state.GreenWait~q\ & ( (\state.RedWait~q\ & \WRED~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.RedWait~q\,
	datad => \ALT_INV_WRED~reg0_q\,
	datae => \ALT_INV_state.YellowWait~q\,
	dataf => \ALT_INV_state.GreenWait~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X30_Y1_N0
\WRED~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WRED~0_combout\ = ( \state.Yellow~q\ & ( \Selector0~0_combout\ ) ) # ( !\state.Yellow~q\ & ( \Selector0~0_combout\ ) ) # ( \state.Yellow~q\ & ( !\Selector0~0_combout\ ) ) # ( !\state.Yellow~q\ & ( !\Selector0~0_combout\ & ( (!\BUTTON~input_o\) # 
-- (!\state.Green~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUTTON~input_o\,
	datad => \ALT_INV_state.Green~q\,
	datae => \ALT_INV_state.Yellow~q\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \WRED~0_combout\);

-- Location: LABCELL_X30_Y1_N51
\WRED~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WRED~1_combout\ = ( \state.Yellow~q\ & ( \state.Red~q\ ) ) # ( !\state.Yellow~q\ & ( \state.Red~q\ ) ) # ( \state.Yellow~q\ & ( !\state.Red~q\ ) ) # ( !\state.Yellow~q\ & ( !\state.Red~q\ & ( (!\state.Green~q\) # (\BUTTON~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUTTON~input_o\,
	datac => \ALT_INV_state.Green~q\,
	datae => \ALT_INV_state.Yellow~q\,
	dataf => \ALT_INV_state.Red~q\,
	combout => \WRED~1_combout\);

-- Location: FF_X30_Y1_N2
\WRED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \WRED~0_combout\,
	ena => \WRED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WRED~reg0_q\);

-- Location: LABCELL_X30_Y1_N39
\WGREEN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WGREEN~0_combout\ = ( \WGREEN~reg0_q\ & ( \state.YellowWait~DUPLICATE_q\ & ( \BUTTON~input_o\ ) ) ) # ( !\WGREEN~reg0_q\ & ( \state.YellowWait~DUPLICATE_q\ & ( (\BUTTON~input_o\ & \state.Red~q\) ) ) ) # ( \WGREEN~reg0_q\ & ( 
-- !\state.YellowWait~DUPLICATE_q\ & ( (\BUTTON~input_o\ & (((\state.GreenWait~DUPLICATE_q\) # (\state.RedWait~q\)) # (\state.Red~q\))) ) ) ) # ( !\WGREEN~reg0_q\ & ( !\state.YellowWait~DUPLICATE_q\ & ( (\BUTTON~input_o\ & \state.Red~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101010101010100010001000100010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUTTON~input_o\,
	datab => \ALT_INV_state.Red~q\,
	datac => \ALT_INV_state.RedWait~q\,
	datad => \ALT_INV_state.GreenWait~DUPLICATE_q\,
	datae => \ALT_INV_WGREEN~reg0_q\,
	dataf => \ALT_INV_state.YellowWait~DUPLICATE_q\,
	combout => \WGREEN~0_combout\);

-- Location: FF_X30_Y1_N40
\WGREEN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \WGREEN~0_combout\,
	ena => \WRED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WGREEN~reg0_q\);

-- Location: LABCELL_X40_Y36_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


