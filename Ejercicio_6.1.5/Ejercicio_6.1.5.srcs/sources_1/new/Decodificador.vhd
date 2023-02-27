
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decodificador is
  Port (A,B,C,D:in bit;
        Fa,Fb,Fc,Fd,Fe,Ff,Fg:out bit);
end Decodificador;

architecture Behavioral of Decodificador is
signal ABCD: bit_vector (3 downto 0);
signal F: bit_vector(6 downto 0);
begin
    ABCD<=A&B&C&D;
    with (ABCD) select
        F<="1111110" when "0000",
           "0110000" when "0001",
           "1101101" when "0010",
           "1111001" when "0011",
           "0110011" when "0100",
           "1011011" when "0101",
           "1011111" when "0110",
           "1110000" when "0111",
           "1111111" when "1000",
           "1111011" when "1001",
           "1110111" when "1010",
           "0011111" when "1011",
           "0001101" when "1100",
           "0111101" when "1101",
           "1001111" when "1110",
           "1000111" when "1111";
    Fa<=F(6);
    Fb<=F(5);
    Fc<=F(4);
    Fd<=F(3);
    Fe<=F(2);
    Ff<=F(1);
    Fg<=F(0);
end Behavioral;
