-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition"

-- DATE "10/14/2021 11:40:47"

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

ENTITY 	nsubburaj_lab5vhdl IS
    PORT (
	sw : IN std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(2 DOWNTO 0)
	);
END nsubburaj_lab5vhdl;

-- Design Ports Information
-- led[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nsubburaj_lab5vhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \GT~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \LT~combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \EQ~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \GT~combout\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_GT~combout\ : std_logic;
SIGNAL \ALT_INV_EQ~combout\ : std_logic;
SIGNAL \ALT_INV_LT~combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_GT~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_sw <= sw;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_GT~combout\ <= NOT \GT~combout\;
\ALT_INV_EQ~combout\ <= NOT \EQ~combout\;
\ALT_INV_LT~combout\ <= NOT \LT~combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_GT~0_combout\ <= NOT \GT~0_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X60_Y0_N2
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LT~combout\,
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOOBUF_X52_Y0_N19
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EQ~combout\,
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X52_Y0_N2
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GT~combout\,
	devoe => ww_devoe,
	o => ww_led(2));

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

-- Location: IOIBUF_X2_Y0_N41
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

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

-- Location: IOIBUF_X16_Y0_N18
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LABCELL_X9_Y1_N48
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \sw[2]~input_o\ & ( (!\sw[7]~input_o\ & ((!\sw[6]~input_o\) # (\sw[3]~input_o\))) # (\sw[7]~input_o\ & (\sw[3]~input_o\ & !\sw[6]~input_o\)) ) ) # ( !\sw[2]~input_o\ & ( (!\sw[7]~input_o\ & \sw[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010110010101100101011001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datab => \ALT_INV_sw[3]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[2]~input_o\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X9_Y1_N51
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \sw[2]~input_o\ & ( (\sw[7]~input_o\ & !\sw[3]~input_o\) ) ) # ( !\sw[2]~input_o\ & ( (!\sw[7]~input_o\ & (!\sw[3]~input_o\ & \sw[6]~input_o\)) # (\sw[7]~input_o\ & ((!\sw[3]~input_o\) # (\sw[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datab => \ALT_INV_sw[3]~input_o\,
	datad => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[2]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X4_Y0_N52
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
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

-- Location: LABCELL_X9_Y1_N39
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \sw[5]~input_o\ & ( (!\sw[4]~input_o\ & (\sw[0]~input_o\ & \sw[1]~input_o\)) ) ) # ( !\sw[5]~input_o\ & ( ((!\sw[4]~input_o\ & \sw[0]~input_o\)) # (\sw[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[4]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X9_Y1_N36
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \sw[5]~input_o\ & ( (!\sw[1]~input_o\) # ((\sw[4]~input_o\ & !\sw[0]~input_o\)) ) ) # ( !\sw[5]~input_o\ & ( (\sw[4]~input_o\ & (!\sw[0]~input_o\ & !\sw[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011111111010001001111111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[4]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datad => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X9_Y1_N3
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \sw[3]~input_o\ & ( \sw[2]~input_o\ & ( (\sw[7]~input_o\ & \sw[6]~input_o\) ) ) ) # ( !\sw[3]~input_o\ & ( \sw[2]~input_o\ & ( (!\sw[7]~input_o\ & \sw[6]~input_o\) ) ) ) # ( \sw[3]~input_o\ & ( !\sw[2]~input_o\ & ( (\sw[7]~input_o\ 
-- & !\sw[6]~input_o\) ) ) ) # ( !\sw[3]~input_o\ & ( !\sw[2]~input_o\ & ( (!\sw[7]~input_o\ & !\sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000010101010000000000000000101010100000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datad => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[3]~input_o\,
	dataf => \ALT_INV_sw[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X9_Y1_N33
\GT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GT~0_combout\ = ( \Equal0~0_combout\ & ( (((\LessThan0~0_combout\) # (\LessThan1~0_combout\)) # (\LessThan0~1_combout\)) # (\LessThan1~1_combout\) ) ) # ( !\Equal0~0_combout\ & ( (\LessThan0~1_combout\) # (\LessThan1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan1~0_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \GT~0_combout\);

-- Location: LABCELL_X9_Y1_N42
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \sw[1]~input_o\ & ( \sw[5]~input_o\ & ( !\sw[0]~input_o\ $ (\sw[4]~input_o\) ) ) ) # ( !\sw[1]~input_o\ & ( !\sw[5]~input_o\ & ( !\sw[0]~input_o\ $ (\sw[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000000000000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X9_Y1_N54
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \Equal0~1_combout\ & ( (\Equal0~0_combout\) # (\LessThan1~1_combout\) ) ) # ( !\Equal0~1_combout\ & ( ((\LessThan1~0_combout\ & \Equal0~0_combout\)) # (\LessThan1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X9_Y1_N30
LT : cyclonev_lcell_comb
-- Equation(s):
-- \LT~combout\ = ( \LT~combout\ & ( !\comb~0_combout\ ) ) # ( !\LT~combout\ & ( (\GT~0_combout\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_GT~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_LT~combout\,
	combout => \LT~combout\);

-- Location: LABCELL_X9_Y1_N12
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~1_combout\ & ( \Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X9_Y1_N6
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \LessThan0~0_combout\ & ( \Equal0~0_combout\ & ( !\Equal0~1_combout\ ) ) ) # ( !\LessThan0~0_combout\ & ( \Equal0~0_combout\ & ( (!\Equal0~1_combout\ & (((\LessThan1~0_combout\) # (\LessThan0~1_combout\)) # (\LessThan1~1_combout\))) ) 
-- ) ) # ( \LessThan0~0_combout\ & ( !\Equal0~0_combout\ & ( (\LessThan0~1_combout\) # (\LessThan1~1_combout\) ) ) ) # ( !\LessThan0~0_combout\ & ( !\Equal0~0_combout\ & ( (\LessThan0~1_combout\) # (\LessThan1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X9_Y1_N15
EQ : cyclonev_lcell_comb
-- Equation(s):
-- \EQ~combout\ = ( \EQ~combout\ & ( !\comb~1_combout\ ) ) # ( !\EQ~combout\ & ( (\Equal0~2_combout\ & !\comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_EQ~combout\,
	combout => \EQ~combout\);

-- Location: LABCELL_X9_Y1_N18
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \LessThan0~0_combout\ & ( \Equal0~0_combout\ & ( ((!\LessThan1~1_combout\ & !\LessThan1~0_combout\)) # (\Equal0~1_combout\) ) ) ) # ( !\LessThan0~0_combout\ & ( \Equal0~0_combout\ & ( ((!\LessThan1~1_combout\ & (\LessThan0~1_combout\ 
-- & !\LessThan1~0_combout\))) # (\Equal0~1_combout\) ) ) ) # ( \LessThan0~0_combout\ & ( !\Equal0~0_combout\ & ( (!\LessThan1~1_combout\ & \LessThan0~1_combout\) ) ) ) # ( !\LessThan0~0_combout\ & ( !\Equal0~0_combout\ & ( (!\LessThan1~1_combout\ & 
-- \LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000111011001100111011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X9_Y1_N57
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( \Equal0~0_combout\ & ( (\LessThan1~0_combout\) # (\LessThan1~1_combout\) ) ) # ( !\Equal0~0_combout\ & ( \LessThan1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X9_Y1_N24
GT : cyclonev_lcell_comb
-- Equation(s):
-- \GT~combout\ = ( \LessThan1~2_combout\ & ( \GT~combout\ & ( !\comb~2_combout\ ) ) ) # ( !\LessThan1~2_combout\ & ( \GT~combout\ & ( !\comb~2_combout\ ) ) ) # ( \LessThan1~2_combout\ & ( !\GT~combout\ & ( !\comb~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~2_combout\,
	datae => \ALT_INV_LessThan1~2_combout\,
	dataf => \ALT_INV_GT~combout\,
	combout => \GT~combout\);

-- Location: LABCELL_X12_Y46_N3
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


