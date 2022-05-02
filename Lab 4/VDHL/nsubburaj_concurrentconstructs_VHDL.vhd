library IEEE;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_Logic_1164.ALL;

entity nsubburaj_concurrentconstructs_VHDL is

port (X : in 	std_logic_vector	(2 downto 0); 
		Y : out  std_logic_vector	(7 downto 0));

end nsubburaj_concurrentconstructs_VHDL;

architecture octalencoder of nsubburaj_concurrentconstructs_VHDL is

begin
	process(X)
	  begin
		case X is
			when "000" => Y <= "00000001"; 
			when "001" => Y <= "00000010"; 
			when "010" => Y <= "00000100"; 
			when "011" => Y <= "00001000";
			when "100" => Y <= "00010000"; 
			when "101" => Y <= "00100000"; 
			when "110" => Y <= "01000000"; 
			when "111" => Y <= "10000000"; 
	  end case;
	 end process;
end octalencoder;
