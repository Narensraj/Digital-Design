library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nsubburaj_lab8_vhdl is
port(
SW : in std_logic_vector(7 downto 0);
LEDR : out std_logic_vector(3 downto 0);
CLK : in std_logic );

end nsubburaj_lab8_vhdl;

architecture shiftregister of nsubburaj_lab8_vhdl is
-- Register
signal R : std_logic_vector(3 downto 0);
-- Function select.
signal S : std_logic_vector(1 downto 0);
begin
S <= SW(7 downto 6); 
LEDR <= R;

by_rising_edge : process(CLK)
begin
if rising_edge(CLK) then
		case S is
			when "00" => R <= null;
			when "01" => R <= (R(2 downto 0) & SW(0)); 
			when "10" => R <= (SW(5) & R(3 downto 1)); 
			When "11" => R <=  SW(4 downto 1); 
			When others => null;
		end case;
		end if;
	end process by_rising_edge ;
end shiftregister;
