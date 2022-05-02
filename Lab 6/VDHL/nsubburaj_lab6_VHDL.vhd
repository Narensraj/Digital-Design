library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
  
entity nsubburaj_lab6_VHDL is
port (
sw : in std_logic_vector(7 downto 0);
led : out std_logic_vector(7 downto 0)
);
end nsubburaj_lab6_VHDL; 
 
architecture halfadder of nsubburaj_lab6_VHDL is
signal A : std_logic_vector(3 downto 0); 
signal B : std_logic_vector(7 downto 4); 
signal Sum: std_logic_vector(3 downto 0); 
signal C : std_logic_vector(7 downto 4);
begin
A <= sw(3 downto 0); 
B <= sw(7 downto 4);

led (3 downto 0) <= Sum(3 downto 0);
led (7 downto 4) <= C(7 downto 4);

Sum(0) <= A(0) XOR B(4);
C(4) <= A(0) AND B(4); 

Sum(1) <= A(1) XOR B(5);
C(5) <= A(1) AND B(5);

Sum(2) <= A(2) XOR B(6);
C(6) <= A(2) AND B(6);

Sum(3) <= A(3) XOR B(7);
C(7) <= A(3) AND B(7);


end halfadder; 