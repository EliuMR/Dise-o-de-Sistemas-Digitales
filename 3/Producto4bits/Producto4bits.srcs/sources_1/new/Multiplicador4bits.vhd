library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Multiplicador4bits is
  Port (numero1, numero2: in bit_vector(3 downto 0);
        resultado: out bit_vector(7 downto 0));
end Multiplicador4bits;

architecture Behavioral of Multiplicador4bits is
signal CarryAuxiliar1: bit_vector(3 downto 0);
signal CarryAuxiliar2: bit_vector(3 downto 0);
signal CarryAuxiliar3: bit_vector(3 downto 0);
signal A1B0,A0B1,A2B0,A1B1,A3B0,A2B1,A3B1: bit;
signal A0B2,A0_B2,A1B2,A1_B2,A2B2,A2_B2,A3B2,A3_B2: bit;
signal A0B3,A0_B3,A1B3,A1_B3,A2B3,A2_B3,A3B3,A3_B3:bit;
component Suma1bit is
  Port ( Bit1: in bit;
         Bit2: in bit;
         Carry: in bit;
         Suma: out bit;
         Carry2: out bit);
end component;
component Multiplicador1bit is
  Port (Bit1,Bit2: in bit;
        Producto: out bit );
end component;
begin
--bit0
    bit0_resultado: Multiplicador1bit port map (
    Bit1=>numero1(0),Bit2=>numero2(0),
    Producto=>resultado(0));
--bit1
    U2: Multiplicador1bit port map(
    Bit1=>numero1(1),Bit2=>numero2(0),Producto=>A1B0);
    U3: Multiplicador1bit port map(
    Bit1=>numero1(0),Bit2=>numero2(1),Producto=>A0B1);
    U4: Suma1bit port map(Bit1=>A1B0,Bit2=>A0B1,Carry=>'0',
    Suma=>resultado(1),Carry2=>CarryAuxiliar1(0));
--bi2
    U5: Multiplicador1bit port map(
    Bit1=>numero1(2),Bit2=>numero2(0),Producto=>A2B0);
    U6: Multiplicador1bit port map(
    Bit1=>numero1(1),Bit2=>numero2(1),Producto=>A1B1);
    U7:Suma1bit port map(Bit1=>A2B0,Bit2=>A1B1,Carry=>CarryAuxiliar1(0),
    Suma=>A0_B2,Carry2=>CarryAuxiliar1(1));
    U8: Multiplicador1bit port map(
    Bit1=>numero1(0),Bit2=>numero2(2),Producto=>A0B2);
    U9: Suma1bit port map(Bit1=>A0B2,Bit2=>A0_B2,Carry=>'0',
    Suma=>resultado(2),Carry2=>CarryAuxiliar2(0));
--bit3
    U10: Multiplicador1bit port map(
    Bit1=>numero1(3),Bit2=>numero2(0),Producto=>A3B0);
    U11: Multiplicador1bit port map(
    Bit1=>numero1(2),Bit2=>numero2(1),Producto=>A2B1);
    U12: Suma1bit port map(
    Bit1=>A3B0,Bit2=>A2B1,Carry=>CarryAuxiliar1(1),
    Suma=>A1_B2,Carry2=>CarryAuxiliar1(2));
    U13: Multiplicador1bit port map(
    Bit1=>numero1(1),Bit2=>numero2(2),Producto=>A1B2);
    U14: Suma1bit port map(
    Bit1=>A1_B2,Bit2=>A1B2,Carry=>CarryAuxiliar2(0),
    Suma=>A0_B3,Carry2=>CarryAuxiliar2(1));
    U15: Multiplicador1bit port map(
    Bit1=>numero1(0),Bit2=>numero2(3),Producto=>A0B3);
    U16: Suma1bit port map(
    Bit1=>A0B3,Bit2=>A0_B3,Carry=>'0',
    Suma=>resultado(3),Carry2=>CarryAuxiliar3(0));
--bit4
    U17: Multiplicador1bit port map(
    Bit1=>numero1(3),Bit2=>numero2(1),Producto=>A3B1);
    U18: Suma1bit port map(
    Bit1=>A3B1,Bit2=>'0',Carry=>CarryAuxiliar1(2),
    Suma=>A2_B2,Carry2=>A3_B2);
    U19: Multiplicador1bit port map(
    Bit1=>numero1(2),Bit2=>numero2(2),Producto=>A2B2);
    U20: Suma1bit port map(
    Bit1=>A2_B2,Bit2=>A2B2,Carry=>CarryAuxiliar2(1),
    Suma=>A1_B3,Carry2=>CarryAuxiliar2(2));
    U21: Multiplicador1bit port map(
    Bit1=>numero1(1),Bit2=>numero2(3),Producto=>A1B3);
    U22: Suma1bit port map(
    Bit1=>A1B3,Bit2=>A1_B3,Carry=>CarryAuxiliar3(0),
    Suma=>resultado(4),Carry2=>CarryAuxiliar3(1));
--bit5
    U23: Multiplicador1bit port map(
    Bit1=>numero1(3),Bit2=>numero2(2),Producto=>A3B2);
    U24: Suma1bit port map(
    Bit1=>A3B2,Bit2=>A3_B2,Carry=>CarryAuxiliar2(2),
    Suma=>A2_B3,Carry2=>A3_B3);
    U25: Multiplicador1bit port map(
    Bit1=>numero1(2),Bit2=>numero2(3),Producto=>A2B3);
    U26: Suma1bit port map(
    Bit1=>A2B3,Bit2=>A2_B3,Carry=>CarryAuxiliar3(1),
    Suma=>resultado(5),Carry2=>CarryAuxiliar3(2));
--bit6,7
    U27: Multiplicador1bit port map(
    Bit1=>numero1(3),Bit2=>numero2(3),Producto=>A3B3);
    U28: Suma1bit port map(
    Bit1=>A3B3,Bit2=>A3_B3,Carry=>CarryAuxiliar3(2),
    Suma=>resultado(6),Carry2=>resultado(7));
end Behavioral;
