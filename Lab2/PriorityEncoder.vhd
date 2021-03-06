library ieee;
use ieee.std_logic_1164.all;
entity Priority_encoder is
Port ( 
inputs : in std_logic_vector(7 downto 0);
outputs: out std_logic_vector(2 downto 0)
);
end Priority_encoder ;

architecture behav of Priority_encoder is
begin
process (inputs)
   begin
      if (inputs(0)='1') then
         outputs <= "000";
      elsif (inputs(1)='1') then
         outputs <= "001";
      elsif (inputs(2)='1') then
         outputs <= "010";
      elsif (inputs(3)='1') then
         outputs <= "011";
      elsif (inputs(4)='1') then
         outputs <= "100";
      elsif (inputs(5)='1') then
         outputs <= "101";
      elsif (inputs(6)='1') then
         outputs <= "110";
      elsif (inputs(7)='1') then
         outputs <= "111";
      else
		null;
   end if;
end process;

end behav;
