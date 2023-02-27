library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.Std_LOGIC_Unsigned.ALL;
entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
			  cin   : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
--32_bit ADDER
component adder_32bit is
PORT (
	a : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	cin : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	overflow : OUT STD_LOGIC;
	sum : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
end component;

--32_bit AND
component and_32bit is
    Port ( a_in : in  STD_LOGIC_VECTOR (31 downto 0);
           b_in : in  STD_LOGIC_VECTOR (31 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--32_bit OR
component or_32bit is
    Port ( a_in : in  STD_LOGIC_VECTOR (31 downto 0);
           b_in : in  STD_LOGIC_VECTOR (31 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--32_bit NOR
component nor_32bit is
    Port ( a_in : in  STD_LOGIC_VECTOR (31 downto 0);
           b_in : in  STD_LOGIC_VECTOR (31 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--MUX_16to1
component mux_16to1 is
    Port ( in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           in3 : in  STD_LOGIC_VECTOR (31 downto 0);
           in4 : in  STD_LOGIC_VECTOR (31 downto 0);
           in5 : in  STD_LOGIC_VECTOR (31 downto 0);
           in6 : in  STD_LOGIC_VECTOR (31 downto 0);
           in7 : in  STD_LOGIC_VECTOR (31 downto 0);
           in8 : in  STD_LOGIC_VECTOR (31 downto 0);
           in9 : in  STD_LOGIC_VECTOR (31 downto 0);
           in10 : in  STD_LOGIC_VECTOR (31 downto 0);
           in11 : in  STD_LOGIC_VECTOR (31 downto 0);
           in12 : in  STD_LOGIC_VECTOR (31 downto 0);
           in13 : in  STD_LOGIC_VECTOR (31 downto 0);
           in14 : in  STD_LOGIC_VECTOR (31 downto 0);
           in15 : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (3 downto 0);
           y : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--Wires
SIGNAL andResult     : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL orResult      : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL norResult     : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL bnot          : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL addout        : STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL subout        : STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL cflag1        : STD_LOGIC;
SIGNAL cflag2        : STD_LOGIC;
SIGNAL oflag1        : STD_LOGIC;
SIGNAL oflag2        : STD_LOGIC;
SIGNAL result : STD_LOGIC_VECTOR (31 downto 0);


begin
 mux1: mux_16to1 port map (in0 => andResult,
									in1 => orResult,
									in2 => addout,
									in3 => subout,
									in4 => norResult,
									in5 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in6 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in7 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in8 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in9 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in10 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in11 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in12 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in13 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in14 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									in15 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
									sel => aluop,
									y => dataout);
 
 A1 : adder_32bit PORT MAP (data1 , data2 , cin , cflag1 , oflag1 , addout);
 bnot <= Not data2 + '1' ;
 A2 : adder_32bit PORT MAP (data1 , bnot , cin , cflag2 , oflag2 , subout);
 and1: and_32bit port map (data1,data2,andResult);
 or1: or_32bit port map (data1,data2,orResult);
 nor1: nor_32bit port map (data1,data2,norResult);
 
 result <= andResult when aluop = "0000" else
           orResult  when aluop = "0001" else
			  addout    when aluop = "0010" else
			  subout    when aluop = "0110" else
			  norResult when aluop = "1100" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			  
 zflag <= '1' when result = x"00000000" else '0';
 
 cflag <= cflag1 when aluop = "0010" else
			 NOT cflag2 when aluop = "0110" else 'Z';
			
 oflag <= oflag1 when aluop = "0010" else
			 oflag2 when aluop = "0110" else	'Z';
end Behavioral;
