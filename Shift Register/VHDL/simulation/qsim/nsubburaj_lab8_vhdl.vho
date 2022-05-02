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

-- DATE "11/24/2021 11:03:51"

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

ENTITY 	nsubburaj_lab8_vhdl IS
    PORT (
	SW : IN std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic
	);
END nsubburaj_lab8_vhdl;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nsubburaj_lab8_vhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \R[0]~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL R : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL ALT_INV_R : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
ALT_INV_R(3) <= NOT R(3);
ALT_INV_R(2) <= NOT R(2);
ALT_INV_R(1) <= NOT R(1);
ALT_INV_R(0) <= NOT R(0);

-- Location: IOOBUF_X80_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOIBUF_X32_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G6
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X16_Y0_N1
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X10_Y2_N57
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( R(2) & ( (!\SW[7]~input_o\) # ((!\SW[6]~input_o\ & ((\SW[5]~input_o\))) # (\SW[6]~input_o\ & (\SW[4]~input_o\))) ) ) # ( !R(2) & ( (\SW[7]~input_o\ & ((!\SW[6]~input_o\ & ((\SW[5]~input_o\))) # (\SW[6]~input_o\ & (\SW[4]~input_o\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => ALT_INV_R(2),
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X10_Y2_N48
\R[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R[0]~0_combout\ = ( \SW[6]~input_o\ & ( \SW[7]~input_o\ ) ) # ( !\SW[6]~input_o\ & ( \SW[7]~input_o\ ) ) # ( \SW[6]~input_o\ & ( !\SW[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \R[0]~0_combout\);

-- Location: FF_X10_Y2_N59
\R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	ena => \R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(3));

-- Location: LABCELL_X10_Y2_N42
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( R(1) & ( (!\SW[7]~input_o\) # ((!\SW[6]~input_o\ & ((R(3)))) # (\SW[6]~input_o\ & (\SW[3]~input_o\))) ) ) # ( !R(1) & ( (\SW[7]~input_o\ & ((!\SW[6]~input_o\ & ((R(3)))) # (\SW[6]~input_o\ & (\SW[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => ALT_INV_R(3),
	dataf => ALT_INV_R(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X10_Y2_N44
\R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	ena => \R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(2));

-- Location: LABCELL_X10_Y2_N45
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( R(2) & ( (!\SW[7]~input_o\ & (((R(0))))) # (\SW[7]~input_o\ & ((!\SW[6]~input_o\) # ((\SW[2]~input_o\)))) ) ) # ( !R(2) & ( (!\SW[7]~input_o\ & (((R(0))))) # (\SW[7]~input_o\ & (\SW[6]~input_o\ & (\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => ALT_INV_R(0),
	dataf => ALT_INV_R(2),
	combout => \Mux2~0_combout\);

-- Location: FF_X10_Y2_N47
\R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	ena => \R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(1));

-- Location: LABCELL_X10_Y2_N54
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( R(1) & ( (!\SW[7]~input_o\ & (((\SW[0]~input_o\)))) # (\SW[7]~input_o\ & ((!\SW[6]~input_o\) # ((\SW[1]~input_o\)))) ) ) # ( !R(1) & ( (!\SW[7]~input_o\ & (((\SW[0]~input_o\)))) # (\SW[7]~input_o\ & (\SW[6]~input_o\ & 
-- ((\SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => ALT_INV_R(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X10_Y2_N56
\R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	ena => \R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(0));

-- Location: LABCELL_X45_Y55_N3
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


