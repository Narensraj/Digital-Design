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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/09/2021 11:37:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          nsubburaj_crosswalk_vhdl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY nsubburaj_crosswalk_vhdl_vhd_vec_tst IS
END nsubburaj_crosswalk_vhdl_vhd_vec_tst;
ARCHITECTURE nsubburaj_crosswalk_vhdl_arch OF nsubburaj_crosswalk_vhdl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BUTTON : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL SGREEN : STD_LOGIC;
SIGNAL SRED : STD_LOGIC;
SIGNAL SYELLOW : STD_LOGIC;
SIGNAL WGREEN : STD_LOGIC;
SIGNAL WRED : STD_LOGIC;
COMPONENT nsubburaj_crosswalk_vhdl
	PORT (
	BUTTON : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	SGREEN : OUT STD_LOGIC;
	SRED : OUT STD_LOGIC;
	SYELLOW : OUT STD_LOGIC;
	WGREEN : OUT STD_LOGIC;
	WRED : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : nsubburaj_crosswalk_vhdl
	PORT MAP (
-- list connections between master ports and signals
	BUTTON => BUTTON,
	clk => clk,
	SGREEN => SGREEN,
	SRED => SRED,
	SYELLOW => SYELLOW,
	WGREEN => WGREEN,
	WRED => WRED
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- BUTTON
t_prcs_BUTTON: PROCESS
BEGIN
	BUTTON <= '1';
WAIT;
END PROCESS t_prcs_BUTTON;
END nsubburaj_crosswalk_vhdl_arch;
