library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR4 is
  Port ( A,B,C,D:in bit;
         F: out bit);
end OR4;

architecture Behavioral of OR4 is

begin
F<=A or B or C or D;

end Behavioral;
