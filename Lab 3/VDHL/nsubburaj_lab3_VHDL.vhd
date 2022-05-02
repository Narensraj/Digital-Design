library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nsubburaj_lab3_VHDL is

port(level1 : in std_logic;
	  level2 : in std_logic;
	  level3 : in std_logic;
	  level4 : in std_logic;
	  level5 : in std_logic;
	  level6 : in std_logic;
	  level7 : in std_logic;
	  LEDR   : out std_logic;
	  LEDG   : out std_logic);
	 
end nsubburaj_lab3_VHDL;

architecture parkingindicator of nsubburaj_lab3_VHDL is

begin

LEDR <= level1 AND level2 AND level3 AND level4 AND level5 AND level6 AND level7;

LEDG <= NOT(level1 AND level2 AND level3 AND level4 AND level5 AND level6 AND level7); 

end parkingindicator;