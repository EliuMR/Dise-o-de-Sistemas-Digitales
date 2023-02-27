library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And3 is
 Port (A,B,C: in bit;
       F: out bit );
end And3;

architecture Behavioral of And3 is

begin
F<=A and B and C;

end Behavioral;
