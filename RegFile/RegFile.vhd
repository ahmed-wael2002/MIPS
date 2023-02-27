library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.pack.ALL;

entity RegFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  rst : IN STD_LOGIC);
end RegFile;

architecture Behavioral of RegFile is
SIGNAL l : STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL o1, o2, o3, o4, o5, o6, o7, o8, o9 : STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL o10, o11, o12, o13, o14, o15, o16, o17, o18, o19 : STD_LOGIC_VECTOR (31 DOWNTO 0); 
SIGNAL o20, o21, o22, o23, o24, o25, o26, o27, o28, o29 : STD_LOGIC_VECTOR (31 DOWNTO 0); 
SIGNAL o30, o31, o32 : STD_LOGIC_VECTOR (31 DOWNTO 0); 

begin
-- Decoder
d1 : Decoder PORT MAP (write_sel , write_ena , l);

-- Registers
r1 : Regs PORT MAP (write_data, o1, clk, rst, l(0));
r2 : Regs PORT MAP (write_data, o2, clk, rst, l(1));
r3 : Regs PORT MAP (write_data, o3, clk, rst, l(2));
r4 : Regs PORT MAP (write_data, o4, clk, rst, l(3));
r5 : Regs PORT MAP (write_data, o5, clk, rst, l(4));
r6 : Regs PORT MAP (write_data, o6, clk, rst, l(5));
r7 : Regs PORT MAP (write_data, o7, clk, rst, l(6));
r8 : Regs PORT MAP (write_data, o8, clk, rst, l(7));
r9 : Regs PORT MAP (write_data, o9, clk, rst, l(8));
r10 : Regs PORT MAP (write_data, o10, clk, rst, l(9));
r11 : Regs PORT MAP (write_data, o11, clk, rst, l(10));
r12 : Regs PORT MAP (write_data, o12, clk, rst, l(11));
r13 : Regs PORT MAP (write_data, o13, clk, rst, l(12));
r14 : Regs PORT MAP (write_data, o14, clk, rst, l(13));
r15 : Regs PORT MAP (write_data, o15, clk, rst, l(14));
r16 : Regs PORT MAP (write_data, o16, clk, rst, l(15));
r17 : Regs PORT MAP (write_data, o17, clk, rst, l(16));
r18 : Regs PORT MAP (write_data, o18, clk, rst, l(17));
r19 : Regs PORT MAP (write_data, o19, clk, rst, l(18));
r20 : Regs PORT MAP (write_data, o20, clk, rst, l(19));
r21 : Regs PORT MAP (write_data, o21, clk, rst, l(20));
r22 : Regs PORT MAP (write_data, o22, clk, rst, l(21));
r23 : Regs PORT MAP (write_data, o23, clk, rst, l(22));
r24 : Regs PORT MAP (write_data, o24, clk, rst, l(23));
r25 : Regs PORT MAP (write_data, o25, clk, rst, l(24));
r26 : Regs PORT MAP (write_data, o26, clk, rst, l(25));
r27 : Regs PORT MAP (write_data, o27, clk, rst, l(26));
r28 : Regs PORT MAP (write_data, o28, clk, rst, l(27));
r29 : Regs PORT MAP (write_data, o29, clk, rst, l(28));
r30 : Regs PORT MAP (write_data, o30, clk, rst, l(29));
r31 : Regs PORT MAP (write_data, o31, clk, rst, l(30));
r32 : Regs PORT MAP (write_data, o32, clk, rst, l(31));

-- Multiplexers
m1 : MUX PORT MAP (read_sel1, data1, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15, o16, o17, o18, o19, o20, o21, o22, o23, o24, o25, o26, o27, o28, o29, o30, o31, o32);
m2 : MUX PORT MAP (read_sel2, data2, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15, o16, o17, o18, o19, o20, o21, o22, o23, o24, o25, o26, o27, o28, o29, o30, o31, o32);

end Behavioral;

