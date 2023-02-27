library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ALU_Pack.all;

entity ALU is
PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
end ALU;

architecture Behavioral of ALU is
signal cout1: std_logic;
signal cout2: std_logic;
signal cout3: std_logic;
signal cout4: std_logic;
signal cout5: std_logic;
signal cout6: std_logic;
signal cout7: std_logic;
signal cout8: std_logic;
signal cout9: std_logic;
signal cout10: std_logic;
signal cout11: std_logic;
signal cout12: std_logic;
signal cout13: std_logic;
signal cout14: std_logic;
signal cout15: std_logic;
signal cout16: std_logic;
signal cout17: std_logic;
signal cout18: std_logic;
signal cout19: std_logic;
signal cout20: std_logic;
signal cout21: std_logic;
signal cout22: std_logic;
signal cout23: std_logic;
signal cout24: std_logic;
signal cout25: std_logic;
signal cout26: std_logic;
signal cout27: std_logic;
signal cout28: std_logic;
signal cout29: std_logic;
signal cout30: std_logic;
signal cout31: std_logic;
signal cout32: std_logic;

signal ALU1_out: std_logic;
signal ALU2_out: std_logic;
signal ALU3_out: std_logic;
signal ALU4_out: std_logic;
signal ALU5_out: std_logic;
signal ALU6_out: std_logic;
signal ALU7_out: std_logic;
signal ALU8_out: std_logic;
signal ALU9_out: std_logic;
signal ALU10_out: std_logic;
signal ALU11_out: std_logic;
signal ALU12_out: std_logic;
signal ALU13_out: std_logic;
signal ALU14_out: std_logic;
signal ALU15_out: std_logic;
signal ALU16_out: std_logic;
signal ALU17_out: std_logic;
signal ALU18_out: std_logic;
signal ALU19_out: std_logic;
signal ALU20_out: std_logic;
signal ALU21_out: std_logic;
signal ALU22_out: std_logic;
signal ALU23_out: std_logic;
signal ALU24_out: std_logic;
signal ALU25_out: std_logic;
signal ALU26_out: std_logic;
signal ALU27_out: std_logic;
signal ALU28_out: std_logic;
signal ALU29_out: std_logic;
signal ALU30_out: std_logic;
signal ALU31_out: std_logic;
signal ALU32_out: std_logic;
signal set : std_logic_vector(31 downto 0);
begin
ALU1: ALU_1bit port map(data1(0) , data2(0) , aluop , cin ,set(31),set(0), cout1 , ALU1_out);
ALU2: ALU_1bit port map(data1(1) , data2(1) , aluop , cout1 ,'0',set(1) ,cout2 , ALU2_out);
ALU3: ALU_1bit port map(data1(2) , data2(2) , aluop , cout2 ,'0',set(2), cout3 , ALU3_out);
ALU4: ALU_1bit port map(data1(3) , data2(3) , aluop , cout3 ,'0',set(3), cout4 , ALU4_out);
ALU5: ALU_1bit port map(data1(4) , data2(4) , aluop , cout4 ,'0',set(4), cout5 , ALU5_out);
ALU6: ALU_1bit port map(data1(5) , data2(5) , aluop , cout5 , '0',set(5),cout6 , ALU6_out);
ALU7: ALU_1bit port map(data1(6) , data2(6) , aluop , cout6 ,'0',set(6), cout7 , ALU7_out);
ALU8: ALU_1bit port map(data1(7) , data2(7) , aluop , cout7 ,'0', set(7),cout8 , ALU8_out);
ALU9: ALU_1bit port map(data1(8) , data2(8) , aluop , cout8 ,'0', set(8),cout9 , ALU9_out);
ALU10: ALU_1bit port map(data1(9) , data2(9) , aluop , cout9 , '0',set(9),cout10 , ALU10_out);
ALU11: ALU_1bit port map(data1(10) , data2(10) , aluop , cout10 ,'0',set(10), cout11 , ALU11_out);
ALU12: ALU_1bit port map(data1(11) , data2(11) , aluop , cout11 ,'0', set(11),cout12 , ALU12_out);
ALU13: ALU_1bit port map(data1(12) , data2(12) , aluop , cout12 ,'0', set(12),cout13 , ALU13_out);
ALU14: ALU_1bit port map(data1(13) , data2(13) , aluop , cout13 ,'0', set(13),cout14 , ALU14_out);
ALU15: ALU_1bit port map(data1(14) , data2(14) , aluop , cout14 ,'0', set(14),cout15 , ALU15_out);
ALU16: ALU_1bit port map(data1(15) , data2(15) , aluop , cout15 , '0',set(15),cout16 , ALU16_out);
ALU17: ALU_1bit port map(data1(16) , data2(16) , aluop , cout16 ,'0', set(16),cout17 , ALU17_out);
ALU18: ALU_1bit port map(data1(17) , data2(17) , aluop , cout17 ,'0',set(17), cout18 , ALU18_out);
ALU19: ALU_1bit port map(data1(18) , data2(18) , aluop , cout18 ,'0', set(18),cout19 , ALU19_out);
ALU20: ALU_1bit port map(data1(19) , data2(19) , aluop , cout19 , '0',set(19),cout20 , ALU20_out);
ALU21: ALU_1bit port map(data1(20) , data2(20) , aluop , cout20 ,'0', set(20),cout21 , ALU21_out);
ALU22: ALU_1bit port map(data1(21) , data2(21) , aluop , cout21 , '0',set(21),cout22 , ALU22_out);
ALU23: ALU_1bit port map(data1(22) , data2(22) , aluop , cout22 , '0',set(22),cout23 , ALU23_out);
ALU24: ALU_1bit port map(data1(23) , data2(23) , aluop , cout23 , '0',set(23),cout24 , ALU24_out);
ALU25: ALU_1bit port map(data1(24) , data2(24) , aluop , cout24 , '0',set(24),cout25 , ALU25_out);
ALU26: ALU_1bit port map(data1(25) , data2(25) , aluop , cout25 , '0',set(25),cout26 , ALU26_out);
ALU27: ALU_1bit port map(data1(26) , data2(26) , aluop , cout26 ,'0',set(26), cout27 , ALU27_out);
ALU28: ALU_1bit port map(data1(27) , data2(27) , aluop , cout27 , '0',set(27),cout28 , ALU28_out);
ALU29: ALU_1bit port map(data1(28) , data2(28) , aluop , cout28 ,'0', set(28),cout29 , ALU29_out);
ALU30: ALU_1bit port map(data1(29) , data2(29) , aluop , cout29 , '0',set(29),cout30 , ALU30_out);
ALU31: ALU_1bit port map(data1(30) , data2(30) , aluop , cout30 , '0',set(30),cout31 , ALU31_out);
ALU32: ALU_1bit port map(data1(31) , data2(31) , aluop , cout31 , '0',set(31),cout32 , ALU32_out);


oflag <= cout31 xor cout32;
cflag <= cout32;
zflag <= not(ALU1_out or ALU2_out or ALU3_out or ALU4_out or ALU5_out or ALU6_out or ALU7_out or ALU8_out or ALU9_out or ALU10_out or ALU11_out or ALU12_out or ALU13_out or ALU14_out or ALU15_out or ALU16_out or ALU17_out or ALU18_out or ALU19_out or ALU20_out or ALU21_out or ALU22_out or ALU23_out or ALU24_out or ALU25_out or ALU26_out or ALU27_out or ALU28_out or ALU29_out or ALU30_out or ALU31_out or ALU32_out);
dataout(0) <= ALU1_out;
dataout(1) <= ALU2_out;
dataout(2) <= ALU3_out;
dataout(3) <= ALU4_out;
dataout(4) <= ALU5_out;
dataout(5) <= ALU6_out;
dataout(6) <= ALU7_out;
dataout(7) <= ALU8_out;
dataout(8) <= ALU9_out;
dataout(9) <= ALU10_out;
dataout(10) <= ALU11_out;
dataout(11) <= ALU12_out;
dataout(12) <= ALU13_out;
dataout(13) <= ALU14_out;
dataout(14) <= ALU15_out;
dataout(15) <= ALU16_out;
dataout(16) <= ALU17_out;
dataout(17) <= ALU18_out;
dataout(18) <= ALU19_out;
dataout(19) <= ALU20_out;
dataout(20) <= ALU21_out;
dataout(21) <= ALU22_out;
dataout(22) <= ALU23_out;
dataout(23) <= ALU24_out;
dataout(24) <= ALU25_out;
dataout(25) <= ALU26_out;
dataout(26) <= ALU27_out;
dataout(27) <= ALU28_out;
dataout(28) <= ALU29_out;
dataout(29) <= ALU30_out;
dataout(30) <= ALU31_out;
dataout(31) <= ALU32_out;

        

end Behavioral;
