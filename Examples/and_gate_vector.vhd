library IEEE;
use IEEE.std_logic_1164.all;
Entity and_gate_vector is
Port(
A, B: in std_logic_vector(3 downto 0);
C : out std_logic_vector(3 downto 0)
);
End entity and_gate_vector;
Architecture behavioral of and_gate_vector is
Signal internal_signal : std_logic_vector(3 downto 0);
Begin
internal_signal <= A and B;
C <= internal_signal;
End behavioral;