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

-- DATE "11/10/2021 10:36:15"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nsubburaj_lab6_2vhdl IS
    PORT (
	sw : IN std_logic_vector(8 DOWNTO 0);
	led : OUT std_logic_vector(4 DOWNTO 0);
	C : BUFFER std_logic_vector(6 DOWNTO 4)
	);
END nsubburaj_lab6_2vhdl;

-- Design Ports Information
-- led[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nsubburaj_lab6_2vhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(6 DOWNTO 4);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \Sum~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \Sum~1_combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \Sum~2_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \Sum~3_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \C~1_combout\ : std_logic;
SIGNAL \C~2_combout\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_C~0_combout\ : std_logic;

BEGIN

ww_sw <= sw;
led <= ww_led;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[8]~input_o\ <= NOT \sw[8]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_C~0_combout\ <= NOT \C~0_combout\;

-- Location: IOOBUF_X60_Y0_N19
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~0_combout\,
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOOBUF_X80_Y0_N2
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~1_combout\,
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X60_Y0_N2
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~2_combout\,
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X52_Y0_N19
\led[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum~3_combout\,
	devoe => ww_devoe,
	o => ww_led(3));

-- Location: IOOBUF_X52_Y0_N2
\led[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_led(4));

-- Location: IOOBUF_X14_Y0_N36
\C[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C~1_combout\,
	devoe => ww_devoe,
	o => ww_C(4));

-- Location: IOOBUF_X12_Y0_N53
\C[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C~0_combout\,
	devoe => ww_devoe,
	o => ww_C(5));

-- Location: IOOBUF_X12_Y0_N2
\C[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C~2_combout\,
	devoe => ww_devoe,
	o => ww_C(6));

-- Location: IOIBUF_X4_Y0_N18
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: LABCELL_X13_Y1_N30
\Sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~0_combout\ = ( \sw[4]~input_o\ & ( \sw[8]~input_o\ & ( \sw[0]~input_o\ ) ) ) # ( !\sw[4]~input_o\ & ( \sw[8]~input_o\ & ( !\sw[0]~input_o\ ) ) ) # ( \sw[4]~input_o\ & ( !\sw[8]~input_o\ & ( !\sw[0]~input_o\ ) ) ) # ( !\sw[4]~input_o\ & ( 
-- !\sw[8]~input_o\ & ( \sw[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[0]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \Sum~0_combout\);

-- Location: IOIBUF_X4_Y0_N1
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LABCELL_X13_Y1_N39
\Sum~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~1_combout\ = ( \sw[4]~input_o\ & ( \sw[8]~input_o\ & ( !\sw[1]~input_o\ $ (\sw[5]~input_o\) ) ) ) # ( !\sw[4]~input_o\ & ( \sw[8]~input_o\ & ( !\sw[1]~input_o\ $ (!\sw[0]~input_o\ $ (\sw[5]~input_o\)) ) ) ) # ( \sw[4]~input_o\ & ( !\sw[8]~input_o\ & 
-- ( !\sw[1]~input_o\ $ (!\sw[0]~input_o\ $ (\sw[5]~input_o\)) ) ) ) # ( !\sw[4]~input_o\ & ( !\sw[8]~input_o\ & ( !\sw[1]~input_o\ $ (!\sw[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010110101010010101011010101001011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datac => \ALT_INV_sw[0]~input_o\,
	datad => \ALT_INV_sw[5]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \Sum~1_combout\);

-- Location: LABCELL_X13_Y1_N12
\C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C~0_combout\ = ( \sw[4]~input_o\ & ( \sw[8]~input_o\ & ( (\sw[1]~input_o\) # (\sw[5]~input_o\) ) ) ) # ( !\sw[4]~input_o\ & ( \sw[8]~input_o\ & ( (!\sw[5]~input_o\ & (\sw[0]~input_o\ & \sw[1]~input_o\)) # (\sw[5]~input_o\ & ((\sw[1]~input_o\) # 
-- (\sw[0]~input_o\))) ) ) ) # ( \sw[4]~input_o\ & ( !\sw[8]~input_o\ & ( (!\sw[5]~input_o\ & (\sw[0]~input_o\ & \sw[1]~input_o\)) # (\sw[5]~input_o\ & ((\sw[1]~input_o\) # (\sw[0]~input_o\))) ) ) ) # ( !\sw[4]~input_o\ & ( !\sw[8]~input_o\ & ( 
-- (\sw[5]~input_o\ & \sw[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000101110001011100010111000101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[5]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \C~0_combout\);

-- Location: IOIBUF_X4_Y0_N35
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LABCELL_X13_Y1_N51
\Sum~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~2_combout\ = ( \sw[2]~input_o\ & ( \sw[6]~input_o\ & ( \C~0_combout\ ) ) ) # ( !\sw[2]~input_o\ & ( \sw[6]~input_o\ & ( !\C~0_combout\ ) ) ) # ( \sw[2]~input_o\ & ( !\sw[6]~input_o\ & ( !\C~0_combout\ ) ) ) # ( !\sw[2]~input_o\ & ( !\sw[6]~input_o\ & 
-- ( \C~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_C~0_combout\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[6]~input_o\,
	combout => \Sum~2_combout\);

-- Location: IOIBUF_X12_Y0_N18
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LABCELL_X13_Y1_N57
\Sum~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Sum~3_combout\ = ( \sw[2]~input_o\ & ( \sw[3]~input_o\ & ( !\sw[7]~input_o\ $ (((\sw[6]~input_o\) # (\C~0_combout\))) ) ) ) # ( !\sw[2]~input_o\ & ( \sw[3]~input_o\ & ( !\sw[7]~input_o\ $ (((\C~0_combout\ & \sw[6]~input_o\))) ) ) ) # ( \sw[2]~input_o\ & 
-- ( !\sw[3]~input_o\ & ( !\sw[7]~input_o\ $ (((!\C~0_combout\ & !\sw[6]~input_o\))) ) ) ) # ( !\sw[2]~input_o\ & ( !\sw[3]~input_o\ & ( !\sw[7]~input_o\ $ (((!\C~0_combout\) # (!\sw[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010110101010101010101010101001011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datac => \ALT_INV_C~0_combout\,
	datad => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \Sum~3_combout\);

-- Location: LABCELL_X13_Y1_N0
\Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = ( \sw[2]~input_o\ & ( \sw[3]~input_o\ & ( ((\sw[7]~input_o\) # (\C~0_combout\)) # (\sw[6]~input_o\) ) ) ) # ( !\sw[2]~input_o\ & ( \sw[3]~input_o\ & ( ((\sw[6]~input_o\ & \C~0_combout\)) # (\sw[7]~input_o\) ) ) ) # ( \sw[2]~input_o\ & ( 
-- !\sw[3]~input_o\ & ( (\sw[7]~input_o\ & ((\C~0_combout\) # (\sw[6]~input_o\))) ) ) ) # ( !\sw[2]~input_o\ & ( !\sw[3]~input_o\ & ( (\sw[6]~input_o\ & (\C~0_combout\ & \sw[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000001110000011100011111000111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datab => \ALT_INV_C~0_combout\,
	datac => \ALT_INV_sw[7]~input_o\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \Cout~0_combout\);

-- Location: LABCELL_X13_Y1_N9
\C~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C~1_combout\ = ( \sw[4]~input_o\ & ( \sw[8]~input_o\ ) ) # ( !\sw[4]~input_o\ & ( \sw[8]~input_o\ & ( \sw[0]~input_o\ ) ) ) # ( \sw[4]~input_o\ & ( !\sw[8]~input_o\ & ( \sw[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[0]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[8]~input_o\,
	combout => \C~1_combout\);

-- Location: LABCELL_X13_Y1_N42
\C~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C~2_combout\ = ( \sw[2]~input_o\ & ( \sw[6]~input_o\ ) ) # ( !\sw[2]~input_o\ & ( \sw[6]~input_o\ & ( \C~0_combout\ ) ) ) # ( \sw[2]~input_o\ & ( !\sw[6]~input_o\ & ( \C~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C~0_combout\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[6]~input_o\,
	combout => \C~2_combout\);

-- Location: LABCELL_X13_Y78_N0
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


