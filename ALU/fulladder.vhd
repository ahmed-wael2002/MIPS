library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fulladder is
   port( a, b, cin : in std_logic;
         sum, cout : out std_logic);
end fulladder;
 
architecture behavioral of fulladder is
begin
   sum <= (a xor b) xor cin;
   Cout <= (a and (b or cin)) or (cin and b);
end behavioral;