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

-- DATE "10/14/2021 12:01:40"

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

ENTITY 	nsubburaj_concurrentconstructs_VHDL IS
    PORT (
	X : IN std_logic_vector(2 DOWNTO 0);
	Y : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END nsubburaj_concurrentconstructs_VHDL;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nsubburaj_concurrentconstructs_VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \ALT_INV_X[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[1]~input_o\ : std_logic;

BEGIN

ww_X <= X;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_X[2]~input_o\ <= NOT \X[2]~input_o\;
\ALT_INV_X[0]~input_o\ <= NOT \X[0]~input_o\;
\ALT_INV_X[1]~input_o\ <= NOT \X[1]~input_o\;

-- Location: IOOBUF_X89_Y6_N22
\Y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_Y(0));

-- Location: IOOBUF_X84_Y0_N2
\Y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => ww_Y(1));

-- Location: IOOBUF_X80_Y0_N19
\Y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => ww_Y(2));

-- Location: IOOBUF_X60_Y0_N19
\Y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => ww_Y(3));

-- Location: IOOBUF_X80_Y0_N2
\Y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => ww_Y(4));

-- Location: IOOBUF_X60_Y0_N2
\Y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~5_combout\,
	devoe => ww_devoe,
	o => ww_Y(5));

-- Location: IOOBUF_X52_Y0_N19
\Y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~6_combout\,
	devoe => ww_devoe,
	o => ww_Y(6));

-- Location: IOOBUF_X52_Y0_N2
\Y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~7_combout\,
	devoe => ww_devoe,
	o => ww_Y(7));

-- Location: IOIBUF_X8_Y0_N35
\X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\X[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LABCELL_X57_Y2_N30
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( !\X[1]~input_o\ & ( (!\X[0]~input_o\ & !\X[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[0]~input_o\,
	datac => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_X[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X57_Y2_N9
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( !\X[1]~input_o\ & ( (!\X[2]~input_o\ & \X[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_X[0]~input_o\,
	datae => \ALT_INV_X[1]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LABCELL_X57_Y2_N12
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \X[1]~input_o\ & ( (!\X[0]~input_o\ & !\X[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[0]~input_o\,
	datac => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_X[1]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X57_Y2_N51
\Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( \X[1]~input_o\ & ( (!\X[2]~input_o\ & \X[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_X[0]~input_o\,
	datae => \ALT_INV_X[1]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LABCELL_X57_Y2_N24
\Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = ( !\X[1]~input_o\ & ( (!\X[0]~input_o\ & \X[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[0]~input_o\,
	datac => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_X[1]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LABCELL_X57_Y2_N3
\Mux7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = ( !\X[1]~input_o\ & ( (\X[2]~input_o\ & \X[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_X[0]~input_o\,
	datae => \ALT_INV_X[1]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LABCELL_X57_Y2_N39
\Mux7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = ( \X[1]~input_o\ & ( (\X[2]~input_o\ & !\X[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_X[0]~input_o\,
	datae => \ALT_INV_X[1]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LABCELL_X57_Y2_N42
\Mux7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = ( \X[1]~input_o\ & ( (\X[0]~input_o\ & \X[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[0]~input_o\,
	datac => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_X[1]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: LABCELL_X57_Y13_N3
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


