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
-- Generated on "10/14/2021 12:01:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          nsubburaj_concurrentconstructs_VHDL
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY nsubburaj_concurrentconstructs_VHDL_vhd_vec_tst IS
END nsubburaj_concurrentconstructs_VHDL_vhd_vec_tst;
ARCHITECTURE nsubburaj_concurrentconstructs_VHDL_arch OF nsubburaj_concurrentconstructs_VHDL_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL X : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT nsubburaj_concurrentconstructs_VHDL
	PORT (
	X : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Y : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : nsubburaj_concurrentconstructs_VHDL
	PORT MAP (
-- list connections between master ports and signals
	X => X,
	Y => Y
	);

-- X[0]
t_prcs_X_0: PROCESS
BEGIN
LOOP
	X(0) <= '0';
	WAIT FOR 500 ps;
	X(0) <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 15000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_0;

-- X[1]
t_prcs_X_1: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		X(1) <= '0';
		WAIT FOR 1000 ps;
		X(1) <= '1';
		WAIT FOR 1000 ps;
	END LOOP;
	X(1) <= '0';
WAIT;
END PROCESS t_prcs_X_1;

-- X[2]
t_prcs_X_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		X(2) <= '0';
		WAIT FOR 2000 ps;
		X(2) <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	X(2) <= '0';
	WAIT FOR 2000 ps;
	X(2) <= '1';
WAIT;
END PROCESS t_prcs_X_2;
END nsubburaj_concurrentconstructs_VHDL_arch;
