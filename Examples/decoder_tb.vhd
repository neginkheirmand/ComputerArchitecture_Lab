library ieee;
use ieee.std_logic_1164.all;
entity decoder_tb is
end entity decoder_tb;
architecture test of decoder_tb is
component Decoder_vec is
port(
input: in std_logic_vector(2 downto 0);
output: out std_logic_vector(7 downto 0)
);
end component;
signal i :std_logic_vector(2 downto 0);
signal o : std_logic_vector(7 downto 0);
begin
dec:Decoder_vec port map ( input => i, ouput => o);
i <= "000", "001" after 100 ns, "101" after 200 ns;
end test;