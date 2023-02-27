library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_32bit is
PORT (
	a : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	cin : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	overflow : OUT STD_LOGIC;
	sum : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
end adder_32bit;


architecture Behavioral of adder_32bit is

component FourAdder is
Port (
			a : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			b : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			cin : IN STD_LOGIC;
			cout : OUT STD_LOGIC;
			sum : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    	);
end component;

SIGNAL c1,c2,c3,c4,c5,c6,c7,c8 : STD_LOGIC;
begin

A0 : FourAdder PORT MAP (a(3 DOWNTO 0), b(3 DOWNTO 0), cin, c1, sum(3 DOWNTO 0));
A1 : FourAdder PORT MAP (a(7 DOWNTO 4), b(7 DOWNTO 4), c1, c2, sum(7 DOWNTO 4));
A2 : FourAdder PORT MAP (a(11 DOWNTO 8), b(11 DOWNTO 8), c2, c3, sum(11 DOWNTO 8));
A3 : FourAdder PORT MAP (a(15 DOWNTO 12), b(15 DOWNTO 12), c3, c4, sum(15 DOWNTO 12));
A4 : FourAdder PORT MAP (a(19 DOWNTO 16), b(19 DOWNTO 16), c4, c5, sum(19 DOWNTO 16));
A5 : FourAdder PORT MAP (a(23 DOWNTO 20), b(23 DOWNTO 20), c5, c6, sum(23 DOWNTO 20));
A6 : FourAdder PORT MAP (a(27 DOWNTO 24), b(27 DOWNTO 24), c6, c7, sum(27 DOWNTO 24));
A7 : FourAdder PORT MAP (a(31 DOWNTO 28), b(31 DOWNTO 28), c7, c8, sum(31 DOWNTO 28));

cout <= c8;
overflow <= c7 XOR c8;

end Behavioral;

