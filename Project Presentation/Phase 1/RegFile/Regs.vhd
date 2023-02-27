library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Regs is
    Port ( i : in  STD_LOGIC_VECTOR (31 downto 0);
           o : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           l : in  STD_LOGIC);
end Regs;

architecture Behavioral of Regs is
begin

process (clk, rst)
begin
	if (rst = '1') then
	o <= (OTHERS => '0');
	elsif (clk'EVENT AND clk='1') then 
		if (l = '1') then 
		o <= i;
		end if;
	end if;
end process;

end Behavioral;

