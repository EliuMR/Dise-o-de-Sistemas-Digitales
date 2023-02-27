library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Inv1 is
 Port (A: in bit;
       F: out bit );
end Inv1;

architecture Behavioral of Inv1 is

begin
F<=not A;
end Behavioral;
