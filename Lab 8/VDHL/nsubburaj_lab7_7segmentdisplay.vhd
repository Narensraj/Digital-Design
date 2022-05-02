library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nsubburaj_lab7_7segmentdisplay is
port( INP : in std_logic_vector(3 downto 0);
		HEX : out std_logic_vector(0 to 6));
end nsubburaj_lab7_7segmentdisplay;

architecture RTL of nsubburaj_lab7_7segmentdisplay is
begin
Process(INP)
begin
case INP is
when "0000" => HEX <= "0000001"; 
when "0001" => HEX <= "1001111"; 
when "0010" => HEX <= "0010010"; 
when "0011" => HEX <= "0000110"; 
when "0100" => HEX <= "1001100"; 
when "0101" => HEX <= "0100100"; 
when "0110" => HEX <= "0100000";
when "0111" => HEX <= "0001111"; 
when "1000" => HEX <= "0000000"; 
when "1001" => HEX <= "0001100"; 
when "1010" => HEX <= "0001000";
when "1011" => HEX <= "1100000"; 
when "1100" => HEX <= "0110001"; 
when "1101" => HEX <= "1000010"; 
when "1110" => HEX <= "0110000"; 
when "1111" => HEX <= "0111000"; 
when others => HEX <= "XXXXXXX"; end case;
end process; 
end RTL;