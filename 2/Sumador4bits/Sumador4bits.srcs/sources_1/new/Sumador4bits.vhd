library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Suma4bits is
  Port (numero1, numero2: in bit_vector(3 downto 0);
        SumaTotal: out bit_vector(4 downto 0);
        senalSalidaZ: out std_ulogic);
end Suma4bits;

architecture Sumador4bits of Suma4bits is
    signal carryAuxiliar: bit_vector(3 downto 0);
    signal resultado: bit_vector(4 downto 0);
    component Suma1bit
        Port ( Bit1: in bit;
         Bit2: in bit;
         Carry: in bit;
         Suma: out bit;
         Carry2: out bit);
    end component;
begin
    -- bit 1
    bit1_resultado: Suma1bit port map(Bit1=>numero1(0),
    Bit2=>numero2(0),
    Carry=>'0',
    suma=>resultado(0),
    Carry2=>carryAuxiliar(0));
    
    bit2_resultado: Suma1bit port map(Bit1=>numero1(1),
    Bit2=>numero2(1),
    Carry=>carryAuxiliar(0),
    suma=>resultado(1),
    Carry2=>carryAuxiliar(1));
    
    bit3_resultado: Suma1bit port map(Bit1=>numero1(2),
    Bit2=>numero2(2),
    Carry=>carryAuxiliar(1),
    suma=>resultado(2),
    Carry2=>carryAuxiliar(2));
    
    bit4_resultado: Suma1bit port map(Bit1=>numero1(3),
    Bit2=>numero2(3),
    Carry=>carryAuxiliar(2),
    suma=>resultado(3),
    Carry2=>carryAuxiliar(3));
    
    bit5_resultado: Suma1bit port map(Bit1=>'0',
    Bit2=>'0',
    Carry=>carryAuxiliar(3),
    suma=>resultado(4));
    
    SumaTotal<=resultado;
    senalSalidaZ<='1' when resultado="00000" else '0';
    
end Sumador4bits;
