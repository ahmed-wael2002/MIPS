library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FourAdder is
Port (
			a : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			b : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			cin : IN STD_LOGIC;
			cout : OUT STD_LOGIC;
			sum : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    	);
end FourAdder;

architecture Behavioral of FourAdder is

component fulladder is
   port( a, b, cin : in std_logic;
         sum, cout : out std_logic);
end component;

SIGNAL c1, c2, c3, c4 : STD_LOGIC; --Internal carry bits

begin
FA0 : fulladder PORT MAP (a(0), b(0), cin, sum(0), c1);
FA1 : fulladder PORT MAP (a(1), b(1), c1 , sum(1), c2);
FA2 : fulladder PORT MAP (a(2), b(2), c2 , sum(2), c3);
FA3 : fulladder PORT MAP (a(3), b(3), c3 , sum(3), c4);
cout <= c4;

end Behavioral;

