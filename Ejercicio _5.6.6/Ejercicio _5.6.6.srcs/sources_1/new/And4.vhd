library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity And4 is
  Port (A,B,C,D:in bit; 
        F:out bit);
end And4;

architecture Behavioral of And4 is

begin
F<=A and B and C and D;

end Behavioral;
