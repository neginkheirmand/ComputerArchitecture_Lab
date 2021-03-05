library ieee;
use ieee.std_logic_1164.all;
entity halfAdder_tb is
end entity halfAdder_tb;
architecture test of halfAdder_tb is
component halfAdder is
port(
in1, in2 : in std_logic;
out1, out2 : out std_logic);
end component;
signal tb_in1 : std_logic;
signal tb_in2 : std_logic;
signal tb_out1 :std_logic;
signal tb_out2 :std_logic;

begin
hAdder : halfAdder port map ( in1 => tb_in1, in2 => tb_in2, out1 => tb_out1, out2=> tb_out2);
tb_in1 <= '1' , '0' after 100 ns, '1' after 200 ns,  '0' after 300 ns;
tb_in2 <= '1' , '0' after 100 ns, '0' after 200 ns,  '1' after 300 ns;
end test;