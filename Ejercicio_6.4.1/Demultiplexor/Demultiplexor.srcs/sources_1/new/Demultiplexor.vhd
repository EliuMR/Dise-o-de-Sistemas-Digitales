library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demultiplexor is
  Port (A:in bit;
        Sel: in bit_vector(2 downto 0);
        F: out bit_vector(7 downto 0) );
end Demultiplexor;

architecture Behavioral of Demultiplexor is
--conditional signal assignment
begin
F(0)<=A when (Sel="000") else '0';
F(1)<=A when (Sel="001") else '0';
F(2)<=A when (Sel="010") else '0';
F(3)<=A when (Sel="011") else '0';
F(4)<=A when (Sel="100") else '0';
F(5)<=A when (Sel="101") else '0';
F(6)<=A when (Sel="110") else '0';
F(7)<=A when (Sel="111") else '0';
end Behavioral;
