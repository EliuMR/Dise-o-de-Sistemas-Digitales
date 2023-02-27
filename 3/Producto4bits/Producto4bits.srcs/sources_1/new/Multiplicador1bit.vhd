library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Multiplicador1bit is
  Port (Bit1,Bit2: in bit;
        Producto: out bit );
end Multiplicador1bit;

architecture Behavioral of Multiplicador1bit is

begin
Producto<=Bit1 and Bit2;

end Behavioral;


