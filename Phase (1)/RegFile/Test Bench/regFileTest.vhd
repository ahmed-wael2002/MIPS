LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY regFileTest IS
END regFileTest;
 
ARCHITECTURE behavior OF regFileTest IS 
 
    COMPONENT RegFile
    PORT(
         read_sel1 : IN  std_logic_vector(4 downto 0);
         read_sel2 : IN  std_logic_vector(4 downto 0);
         write_sel : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         clk : IN  std_logic;
         write_data : IN  std_logic_vector(31 downto 0);
         data1 : OUT  std_logic_vector(31 downto 0);
         data2 : OUT  std_logic_vector(31 downto 0);
         rst : IN  std_logic
        );
    END COMPONENT;
    
   signal read_sel1 : std_logic_vector(4 downto 0) := (others => '0');
   signal read_sel2 : std_logic_vector(4 downto 0) := (others => '0');
   signal write_sel : std_logic_vector(4 downto 0) := (others => '0');
   signal write_ena : std_logic := '0';
   signal clk : std_logic := '0';
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal data1 : std_logic_vector(31 downto 0);
   signal data2 : std_logic_vector(31 downto 0);
   constant clk_period : time := 10 ns;
 
BEGIN
			 uut: RegFile PORT MAP (
          read_sel1 => read_sel1,
          read_sel2 => read_sel2,
          write_sel => write_sel,
          write_ena => write_ena,
          clk => clk,
          write_data => write_data,
          data1 => data1,
          data2 => data2,
          rst => rst
        );

	clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

	stim_proc: process
   begin		
	-- test the reset signal
	rst <= '1';
	wait for 200 ns;
	
	-- test register write process
	rst <= '0';
	write_ena <= '1';
	write_sel <= "00010";
	write_data <= "10101010101010111110101010101010";
	wait for 200 ns;
	
	-- test register reading process
	write_ena <= '0';
	read_sel1 <= "00010";
	read_sel2 <= "01000";
	wait for 200 ns;
	
	-- reset again
	rst <= '1';

      wait;
   end process;

END;
