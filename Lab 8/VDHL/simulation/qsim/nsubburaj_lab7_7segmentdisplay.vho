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

-- DATE "11/18/2021 11:07:19"

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

ENTITY 	nsubburaj_lab7_7segmentdisplay IS
    PORT (
	INP : IN std_logic_vector(3 DOWNTO 0);
	HEX : BUFFER std_logic_vector(0 TO 6)
	);
END nsubburaj_lab7_7segmentdisplay;

-- Design Ports Information
-- HEX[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INP[0]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INP[1]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INP[2]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INP[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nsubburaj_lab7_7segmentdisplay IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \INP[1]~input_o\ : std_logic;
SIGNAL \INP[0]~input_o\ : std_logic;
SIGNAL \INP[3]~input_o\ : std_logic;
SIGNAL \INP[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_INP[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_INP[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_INP[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_INP[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_INP <= INP;
HEX <= ww_HEX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_INP[3]~input_o\ <= NOT \INP[3]~input_o\;
\ALT_INV_INP[2]~input_o\ <= NOT \INP[2]~input_o\;
\ALT_INV_INP[1]~input_o\ <= NOT \INP[1]~input_o\;
\ALT_INV_INP[0]~input_o\ <= NOT \INP[0]~input_o\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X84_Y0_N2
\HEX[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(6));

-- Location: IOOBUF_X80_Y0_N19
\HEX[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(5));

-- Location: IOOBUF_X60_Y0_N19
\HEX[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(4));

-- Location: IOOBUF_X80_Y0_N2
\HEX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(3));

-- Location: IOOBUF_X60_Y0_N2
\HEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(1));

-- Location: IOOBUF_X52_Y0_N2
\HEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX(0));

-- Location: IOIBUF_X8_Y0_N35
\INP[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INP(1),
	o => \INP[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\INP[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INP(0),
	o => \INP[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\INP[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INP(3),
	o => \INP[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\INP[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INP(2),
	o => \INP[2]~input_o\);

-- Location: MLABCELL_X59_Y1_N0
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (\INP[0]~input_o\) # (\INP[1]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (!\INP[1]~input_o\) # (!\INP[0]~input_o\) ) ) ) # ( \INP[3]~input_o\ & ( !\INP[2]~input_o\ ) ) # ( 
-- !\INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( \INP[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111100111111000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_INP[1]~input_o\,
	datac => \ALT_INV_INP[0]~input_o\,
	datae => \ALT_INV_INP[3]~input_o\,
	dataf => \ALT_INV_INP[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X59_Y1_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (\INP[0]~input_o\ & !\INP[1]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (\INP[0]~input_o\ & \INP[1]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( 
-- (\INP[1]~input_o\) # (\INP[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000000000000000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INP[0]~input_o\,
	datac => \ALT_INV_INP[1]~input_o\,
	datae => \ALT_INV_INP[3]~input_o\,
	dataf => \ALT_INV_INP[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X59_Y1_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (!\INP[1]~input_o\) # (\INP[0]~input_o\) ) ) ) # ( \INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( (!\INP[1]~input_o\ & \INP[0]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( 
-- \INP[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000000110011001111110011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_INP[1]~input_o\,
	datac => \ALT_INV_INP[0]~input_o\,
	datae => \ALT_INV_INP[3]~input_o\,
	dataf => \ALT_INV_INP[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X59_Y1_N21
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (\INP[0]~input_o\ & \INP[1]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( \INP[2]~input_o\ & ( !\INP[0]~input_o\ $ (\INP[1]~input_o\) ) ) ) # ( \INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( 
-- !\INP[0]~input_o\ $ (!\INP[1]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( (\INP[0]~input_o\ & !\INP[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010110100101101010100101101001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INP[0]~input_o\,
	datac => \ALT_INV_INP[1]~input_o\,
	datae => \ALT_INV_INP[3]~input_o\,
	dataf => \ALT_INV_INP[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X59_Y1_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (!\INP[0]~input_o\) # (\INP[1]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( (\INP[1]~input_o\ & !\INP[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_INP[1]~input_o\,
	datac => \ALT_INV_INP[0]~input_o\,
	datae => \ALT_INV_INP[3]~input_o\,
	dataf => \ALT_INV_INP[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X59_Y1_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (!\INP[0]~input_o\) # (\INP[1]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( \INP[2]~input_o\ & ( !\INP[0]~input_o\ $ (!\INP[1]~input_o\) ) ) ) # ( \INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( 
-- (\INP[0]~input_o\ & \INP[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011010010110101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INP[0]~input_o\,
	datac => \ALT_INV_INP[1]~input_o\,
	datae => \ALT_INV_INP[3]~input_o\,
	dataf => \ALT_INV_INP[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X59_Y1_N6
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (!\INP[1]~input_o\ & \INP[0]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( \INP[2]~input_o\ & ( (!\INP[1]~input_o\ & !\INP[0]~input_o\) ) ) ) # ( \INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( 
-- (\INP[1]~input_o\ & \INP[0]~input_o\) ) ) ) # ( !\INP[3]~input_o\ & ( !\INP[2]~input_o\ & ( (!\INP[1]~input_o\ & \INP[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000110000001111000000110000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_INP[1]~input_o\,
	datac => \ALT_INV_INP[0]~input_o\,
	datae => \ALT_INV_INP[3]~input_o\,
	dataf => \ALT_INV_INP[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X21_Y20_N3
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


