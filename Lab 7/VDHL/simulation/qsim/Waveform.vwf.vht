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
-- Generated on "11/10/2021 10:36:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          nsubburaj_lab6_2vhdl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY nsubburaj_lab6_2vhdl_vhd_vec_tst IS
END nsubburaj_lab6_2vhdl_vhd_vec_tst;
ARCHITECTURE nsubburaj_lab6_2vhdl_arch OF nsubburaj_lab6_2vhdl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC_VECTOR(6 DOWNTO 4);
SIGNAL led : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT nsubburaj_lab6_2vhdl
	PORT (
	C : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 4);
	led : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : nsubburaj_lab6_2vhdl
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	led => led,
	sw => sw
	);
-- sw[8]
t_prcs_sw_8: PROCESS
BEGIN
	sw(8) <= '1';
WAIT;
END PROCESS t_prcs_sw_8;
-- sw[7]
t_prcs_sw_7: PROCESS
BEGIN
	sw(7) <= '0';
WAIT;
END PROCESS t_prcs_sw_7;
-- sw[6]
t_prcs_sw_6: PROCESS
BEGIN
	sw(6) <= '1';
WAIT;
END PROCESS t_prcs_sw_6;
-- sw[5]
t_prcs_sw_5: PROCESS
BEGIN
	sw(5) <= '0';
WAIT;
END PROCESS t_prcs_sw_5;
-- sw[4]
t_prcs_sw_4: PROCESS
BEGIN
	sw(4) <= '1';
WAIT;
END PROCESS t_prcs_sw_4;
-- sw[3]
t_prcs_sw_3: PROCESS
BEGIN
	sw(3) <= '0';
WAIT;
END PROCESS t_prcs_sw_3;
-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	sw(2) <= '0';
WAIT;
END PROCESS t_prcs_sw_2;
-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '1';
WAIT;
END PROCESS t_prcs_sw_1;
-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '0';
WAIT;
END PROCESS t_prcs_sw_0;
END nsubburaj_lab6_2vhdl_arch;
