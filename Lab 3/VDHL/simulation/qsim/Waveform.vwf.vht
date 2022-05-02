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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/29/2021 17:33:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          nsubburaj_lab3_VHDL
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY nsubburaj_lab3_VHDL_vhd_vec_tst IS
END nsubburaj_lab3_VHDL_vhd_vec_tst;
ARCHITECTURE nsubburaj_lab3_VHDL_arch OF nsubburaj_lab3_VHDL_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LEDG : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC;
SIGNAL level1 : STD_LOGIC;
SIGNAL level2 : STD_LOGIC;
SIGNAL level3 : STD_LOGIC;
SIGNAL level4 : STD_LOGIC;
SIGNAL level5 : STD_LOGIC;
SIGNAL level6 : STD_LOGIC;
SIGNAL level7 : STD_LOGIC;
COMPONENT nsubburaj_lab3_VHDL
	PORT (
	LEDG : BUFFER STD_LOGIC;
	LEDR : BUFFER STD_LOGIC;
	level1 : IN STD_LOGIC;
	level2 : IN STD_LOGIC;
	level3 : IN STD_LOGIC;
	level4 : IN STD_LOGIC;
	level5 : IN STD_LOGIC;
	level6 : IN STD_LOGIC;
	level7 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : nsubburaj_lab3_VHDL
	PORT MAP (
-- list connections between master ports and signals
	LEDG => LEDG,
	LEDR => LEDR,
	level1 => level1,
	level2 => level2,
	level3 => level3,
	level4 => level4,
	level5 => level5,
	level6 => level6,
	level7 => level7
	);

-- level1
t_prcs_level1: PROCESS
BEGIN
LOOP
	level1 <= '0';
	WAIT FOR 250000 ps;
	level1 <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_level1;

-- level2
t_prcs_level2: PROCESS
BEGIN
LOOP
	level2 <= '0';
	WAIT FOR 250000 ps;
	level2 <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_level2;

-- level3
t_prcs_level3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		level3 <= '0';
		WAIT FOR 225000 ps;
		level3 <= '1';
		WAIT FOR 225000 ps;
	END LOOP;
	level3 <= '0';
WAIT;
END PROCESS t_prcs_level3;

-- level4
t_prcs_level4: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		level4 <= '0';
		WAIT FOR 200000 ps;
		level4 <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	level4 <= '0';
WAIT;
END PROCESS t_prcs_level4;

-- level5
t_prcs_level5: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		level5 <= '0';
		WAIT FOR 190000 ps;
		level5 <= '1';
		WAIT FOR 190000 ps;
	END LOOP;
	level5 <= '0';
	WAIT FOR 190000 ps;
	level5 <= '1';
WAIT;
END PROCESS t_prcs_level5;

-- level6
t_prcs_level6: PROCESS
BEGIN
LOOP
	level6 <= '0';
	WAIT FOR 250000 ps;
	level6 <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_level6;

-- level7
t_prcs_level7: PROCESS
BEGIN
LOOP
	level7 <= '0';
	WAIT FOR 100000 ps;
	level7 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_level7;
END nsubburaj_lab3_VHDL_arch;
