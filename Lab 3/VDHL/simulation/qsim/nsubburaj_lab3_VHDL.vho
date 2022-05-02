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

-- DATE "09/29/2021 17:33:54"

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

ENTITY 	nsubburaj_lab3_VHDL IS
    PORT (
	level1 : IN std_logic;
	level2 : IN std_logic;
	level3 : IN std_logic;
	level4 : IN std_logic;
	level5 : IN std_logic;
	level6 : IN std_logic;
	level7 : IN std_logic;
	LEDR : BUFFER std_logic;
	LEDG : BUFFER std_logic
	);
END nsubburaj_lab3_VHDL;

-- Design Ports Information
-- LEDR	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level5	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level6	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level7	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level1	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level2	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level3	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level4	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nsubburaj_lab3_VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_level1 : std_logic;
SIGNAL ww_level2 : std_logic;
SIGNAL ww_level3 : std_logic;
SIGNAL ww_level4 : std_logic;
SIGNAL ww_level5 : std_logic;
SIGNAL ww_level6 : std_logic;
SIGNAL ww_level7 : std_logic;
SIGNAL ww_LEDR : std_logic;
SIGNAL ww_LEDG : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \level7~input_o\ : std_logic;
SIGNAL \level3~input_o\ : std_logic;
SIGNAL \level2~input_o\ : std_logic;
SIGNAL \level1~input_o\ : std_logic;
SIGNAL \level4~input_o\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \level5~input_o\ : std_logic;
SIGNAL \level6~input_o\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \ALT_INV_level1~input_o\ : std_logic;
SIGNAL \ALT_INV_level2~input_o\ : std_logic;
SIGNAL \ALT_INV_level3~input_o\ : std_logic;
SIGNAL \ALT_INV_level4~input_o\ : std_logic;
SIGNAL \ALT_INV_LEDR~0_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR~1_combout\ : std_logic;
SIGNAL \ALT_INV_level5~input_o\ : std_logic;
SIGNAL \ALT_INV_level6~input_o\ : std_logic;
SIGNAL \ALT_INV_level7~input_o\ : std_logic;

BEGIN

ww_level1 <= level1;
ww_level2 <= level2;
ww_level3 <= level3;
ww_level4 <= level4;
ww_level5 <= level5;
ww_level6 <= level6;
ww_level7 <= level7;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_level1~input_o\ <= NOT \level1~input_o\;
\ALT_INV_level2~input_o\ <= NOT \level2~input_o\;
\ALT_INV_level3~input_o\ <= NOT \level3~input_o\;
\ALT_INV_level4~input_o\ <= NOT \level4~input_o\;
\ALT_INV_LEDR~0_combout\ <= NOT \LEDR~0_combout\;
\ALT_INV_LEDR~1_combout\ <= NOT \LEDR~1_combout\;
\ALT_INV_level5~input_o\ <= NOT \level5~input_o\;
\ALT_INV_level6~input_o\ <= NOT \level6~input_o\;
\ALT_INV_level7~input_o\ <= NOT \level7~input_o\;

-- Location: IOOBUF_X60_Y0_N2
\LEDR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR);

-- Location: IOOBUF_X52_Y0_N2
\LEDG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDR~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDG);

-- Location: IOIBUF_X4_Y0_N35
\level7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level7,
	o => \level7~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\level3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level3,
	o => \level3~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\level2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level2,
	o => \level2~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\level1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level1,
	o => \level1~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\level4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level4,
	o => \level4~input_o\);

-- Location: LABCELL_X9_Y1_N30
\LEDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = ( \level4~input_o\ & ( (\level3~input_o\ & (\level2~input_o\ & \level1~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_level3~input_o\,
	datac => \ALT_INV_level2~input_o\,
	datad => \ALT_INV_level1~input_o\,
	dataf => \ALT_INV_level4~input_o\,
	combout => \LEDR~0_combout\);

-- Location: IOIBUF_X2_Y0_N41
\level5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level5,
	o => \level5~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\level6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level6,
	o => \level6~input_o\);

-- Location: LABCELL_X9_Y1_N33
\LEDR~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = ( \level6~input_o\ & ( (\level7~input_o\ & (\LEDR~0_combout\ & \level5~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_level7~input_o\,
	datac => \ALT_INV_LEDR~0_combout\,
	datad => \ALT_INV_level5~input_o\,
	dataf => \ALT_INV_level6~input_o\,
	combout => \LEDR~1_combout\);

-- Location: MLABCELL_X6_Y39_N3
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


