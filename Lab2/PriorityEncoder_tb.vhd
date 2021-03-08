---------------------------------------------------------------------
-- Test Bench for Priority encoder
-- 8 cases are tested her
-- by Reyhaneh Bagheri & Negin Kheirmand 
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity PriorityEncoder_tb is				-- entity declaration
end PriorityEncoder_tb;

---------------------------------------------------------------------

architecture testBench of PriorityEncoder_tb is

    component PriorityEncoder
    port(	inputs:		in std_logic_vector(7 downto 0);
		outputs:	out std_logic_vector(2 downto 0)
    );
    end component;


--Initialisation (Initial Conditions of the inputs).
    signal inSignal : std_logic_vector(7 downto 0):="00000000";
--Initialisation (Initial Conditions of the outputs).
    signal outSignal : std_logic_vector(2 downto 0):="000";


begin

    Unit: PriorityEncoder port map (inSignal, outSignal);
	
    process(inSignal)
    begin								

	
	inSignal <= "11111111",
"01111111" after 100 ns  , 
"00111111" after 200 ns  , 
"00011111" after 300 ns  ,
"00001111" after 400 ns  ,
"00000111" after 500 ns  ,
"00000011" after 600 ns  ,
"00000001" after 700 ns  ,
"00000000" after 800 ns  ;
		
    end process;

end testBench;

