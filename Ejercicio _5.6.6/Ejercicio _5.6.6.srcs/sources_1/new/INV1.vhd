library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity INV1 is
    Port (A: in bit; 
          F: out bit);
end INV1;

architecture Behavioral of INV1 is

begin
F<=not A;

end Behavioral;
