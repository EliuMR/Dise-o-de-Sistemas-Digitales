library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Suma1bit is
  Port ( Bit1: in bit;
         Bit2: in bit;
         Carry: in bit;
         Suma: out bit;
         Carry2: out bit);
end Suma1bit;

architecture Behavioral of Suma1bit is
    signal sumaAgrupada: bit_vector(2 downto 0);
    
begin
    sumaAgrupada<=Carry&Bit1&Bit2;
    suma<='0' when sumaAgrupada="101" else
    '1' when sumaAgrupada="001" else
    '1' when sumaAgrupada="100" else
    '0' when sumaAgrupada="000" else
    '1' when sumaAgrupada="111" else
    '0' when sumaAgrupada="011" else
    '0' when sumaAgrupada="110" else
    '1';
    
    Carry2<='1' when sumaAgrupada="101" else
    '0' when sumaAgrupada="001" else
    '0' when sumaAgrupada="100" else
    '0' when sumaAgrupada="000" else
    '1' when sumaAgrupada="111" else
    '1' when sumaAgrupada="011" else
    '1' when sumaAgrupada="110" else
    '0';
end Behavioral;