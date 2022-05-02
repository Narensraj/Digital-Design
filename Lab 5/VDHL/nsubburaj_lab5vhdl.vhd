library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;

entity nsubburaj_lab5vhdl is
port (
		sw : in std_logic_vector(7 downto 0); 
		led : out std_logic_vector(2 downto 0)
);
end nsubburaj_lab5vhdl;

architecture comparator of nsubburaj_lab5vhdl  is
signal A : std_logic_vector(3 downto 0);
signal B : std_logic_vector(3 downto 0);
signal GT : std_logic;
signal EQ : std_logic;
signal LT : std_logic;
begin
A <= sw(3 downto 0);
B (3 downto 0) <= sw(7 downto 4);
process (A,B)
	begin
         if (A < B) then
			LT <= '1';
			GT <= '0';
			EQ <= '0';
	    end if;
			if (A > B) then
			LT <= '0';
			GT <= '1';
			EQ <= '0';
		 end if;
			if (A = B) then
			LT <= '0';
			GT <= '0';
			EQ <= '1';
		 end if;
	end process;
led(0) <= LT;
led(1) <= EQ;
led(2) <= GT;
end comparator;