library IEEE;
use IEEE.std_logic_1164.all;
entity nsubburaj_lab2_VHDL is
port ( A : in std_logic;
		 B : in std_logic;
		 Y : out std_logic);
end nsubburaj_lab2_VHDL;
architecture orgate of nsubburaj_lab2_VHDL is
begin 
Y <= A OR B;
end orgate;