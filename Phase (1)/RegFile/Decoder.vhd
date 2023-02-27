library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decoder is
    Port ( sel : in  STD_LOGIC_VECTOR (4 downto 0);
			  e : IN STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (31 downto 0));
end Decoder;


architecture Behavioral of Decoder is
begin

o <= (OTHERS => 'Z') WHEN e = '0' ELSE
"00000000000000000000000000000001" WHEN sel = "00000" ELSE
"00000000000000000000000000000010" WHEN sel = "00001" ELSE
"00000000000000000000000000000100" WHEN sel = "00010" ELSE
"00000000000000000000000000001000" WHEN sel = "00011" ELSE
"00000000000000000000000000010000" WHEN sel = "00100" ELSE
"00000000000000000000000000100000" WHEN sel = "00101" ELSE
"00000000000000000000000001000000" WHEN sel = "00110" ELSE
"00000000000000000000000010000000" WHEN sel = "00111" ELSE
"00000000000000000000000100000000" WHEN sel = "01000" ELSE
"00000000000000000000001000000000" WHEN sel = "01001" ELSE
"00000000000000000000010000000000" WHEN sel = "01010" ELSE
"00000000000000000000100000000000" WHEN sel = "01011" ELSE
"00000000000000000001000000000000" WHEN sel = "01100" ELSE
"00000000000000000010000000000000" WHEN sel = "01101" ELSE
"00000000000000000100000000000000" WHEN sel = "01110" ELSE
"00000000000000001000000000000000" WHEN sel = "01111" ELSE
"00000000000000010000000000000000" WHEN sel = "10000" ELSE
"00000000000000100000000000000000" WHEN sel = "10001" ELSE
"00000000000001000000000000000000" WHEN sel = "10010" ELSE
"00000000000010000000000000000000" WHEN sel = "10011" ELSE
"00000000000100000000000000000000" WHEN sel = "10100" ELSE
"00000000001000000000000000000000" WHEN sel = "10101" ELSE
"00000000010000000000000000000000" WHEN sel = "10110" ELSE
"00000000100000000000000000000000" WHEN sel = "10111" ELSE
"00000001000000000000000000000000" WHEN sel = "11000" ELSE
"00000010000000000000000000000000" WHEN sel = "11001" ELSE
"00000100000000000000000000000000" WHEN sel = "11010" ELSE
"00001000000000000000000000000000" WHEN sel = "11011" ELSE
"00010000000000000000000000000000" WHEN sel = "11100" ELSE
"00100000000000000000000000000000" WHEN sel = "11101" ELSE
"01000000000000000000000000000000" WHEN sel = "11110" ELSE
"10000000000000000000000000000000" WHEN sel = "11111" ELSE
(OTHERS => 'Z');


end Behavioral;

