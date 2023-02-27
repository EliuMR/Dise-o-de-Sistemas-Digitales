library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or3 is
  Port (A,B,C: in bit;
        F: out bit );
end Or3;

architecture Behavioral of Or3 is

begin
F<=A or b or C;

end Behavioral;
