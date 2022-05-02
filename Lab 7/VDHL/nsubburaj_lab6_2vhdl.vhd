library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nsubburaj_lab6_2vhdl is
port (
sw : in std_logic_vector(8 downto 0); 
led : out std_logic_vector(4 downto 0);
C : buffer std_logic_vector(6 downto 4));
end nsubburaj_lab6_2vhdl;

architecture fulladder of nsubburaj_lab6_2vhdl is
signal A : std_logic_vector(3 downto 0); 
signal B : std_logic_vector(7 downto 4); 
signal Sum: std_logic_vector(3 downto 0); 
signal Cout : std_logic;
signal Cin : std_logic;
begin
A <= sw(3 downto 0); 
B <= sw(7 downto 4);
Cin <= sw (8);

led (3 downto 0) <= Sum(3 downto 0);
led (4) <= Cout;

Sum(0) <= A(0) XOR B(4) XOR Cin ;
C(4) <= (A(0) AND B(4)) OR (Cin AND A(0)) OR (Cin AND B(4)) ;

Sum(1) <= A(1) XOR B(5) XOR C(4) ;
C(5) <= (A(1) AND B(5)) OR (C(4) AND A(1)) OR (C(4) AND B(5)) ;

Sum(2) <= A(2) XOR B(6) XOR C(5);
C(6) <= (A(2) AND B(6)) OR (C(5) AND A(2)) OR (C(5) AND B(6)) ;

Sum(3) <= A(3) XOR B(7) XOR C(6) ;
Cout <= (A(3) AND B(7)) OR (C(6) AND A(3)) OR (C(6) AND B(7)) ;

end fulladder;