library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Codificador is
  Port (A0,A1,A2,A3,A4,A5,A6,A7: in bit;
        F2,F1,F0: out std_ulogic);
end Codificador;

architecture Behavioral of Codificador is
signal A: bit_vector(7 downto 0);
signal F: std_ulogic_vector(2 downto 0);
begin
A<=A0&A1&A2&A3&A4&A5&A6&A7;
with A select
    F<="000" when "00000001",
       "001" when "00000010",
       "010" when "00000100",
       "011" when "00001000",
       "100" when "00010000",
       "101" when "00100000",
       "110" when "01000000",
       "111" when "10000000",
       "UUU" when others;
F0<=F(0);
F1<=F(1);
F2<=F(2);
end Behavioral;
