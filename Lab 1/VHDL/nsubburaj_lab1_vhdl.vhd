library IEEE;
use IEEE.std_logic_1164.all;
entity nsubburaj_lab1_vhdl is
port ( A : in std_logic;
		 B : in std_logic;
		 Y : out std_logic);
end nsubburaj_lab1_vhdl;
architecture andgate of nsubburaj_lab1_vhdl is
begin 
Y <= A AND B;
end andgate;