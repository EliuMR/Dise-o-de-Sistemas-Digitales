
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Multiplexor is
  Port (A: in bit_vector (7 downto 0);
        Sel: in bit_vector (2 downto 0);
        F: out bit);
end Multiplexor;

architecture Behavioral of Multiplexor is

begin
    F<=A(7) when (Sel="000") else
       A(6) when (Sel="001") else
       A(5) when (Sel="010") else
       A(4) when (Sel="011") else
       A(3) when (Sel="100") else
       A(2) when (Sel="101") else
       A(1) when (Sel="110") else
       A(0) when (Sel="111");

end Behavioral;
