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

-- DATE "10/20/2021 19:37:07"

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

ENTITY 	nsubburaj_lab1_vhdl IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	Y : OUT std_logic
	);
END nsubburaj_lab1_vhdl;

-- Design Ports Information
-- Y	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nsubburaj_lab1_vhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;

-- Location: IOOBUF_X84_Y0_N2
\Y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => ww_Y);

-- Location: IOIBUF_X4_Y0_N35
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LABCELL_X16_Y1_N30
\Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \B~input_o\ & ( \A~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B~input_o\,
	dataf => \ALT_INV_A~input_o\,
	combout => \Y~0_combout\);

-- Location: LABCELL_X1_Y42_N3
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


