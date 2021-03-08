
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY PriorityEncoder_tb IS
END PriorityEncoder_tb;
 
ARCHITECTURE behavior OF PriorityEncoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Priority_encoder
    PORT(
         inputs : IN  std_logic_vector(7 downto 0);
         outputs : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputs : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal outputs : std_logic_vector(2 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Priority_encoder PORT MAP (
          inputs => inputs,
          outputs => outputs
        );


   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		inputs <= "11111111";
      wait for 100 ns;	
		inputs <= "11111110";		
      wait for 100 ns;	
		inputs <= "11111100";		
      wait for 100 ns;	
		inputs <= "11111000";		
      wait for 100 ns;
		inputs <= "11110000";		
      wait for 100 ns;
		inputs <= "11100000";		
      wait for 100 ns;
		inputs <= "11000000";		
      wait for 100 ns;
		inputs <= "10000000";		
      wait for 100 ns;
		inputs <= "00000000";

      wait;
   end process;

END;
