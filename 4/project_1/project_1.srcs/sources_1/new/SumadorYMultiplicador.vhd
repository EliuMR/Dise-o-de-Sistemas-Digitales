library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumadorYMultiplicador is
  Port (numero1, numero2: in bit_vector(3 downto 0);
  senalOp: in std_ulogic;
  resultado: out  bit_vector(7 downto 0);
  senalSalidaZ: out std_ulogic);
end SumadorYMultiplicador;

architecture Behavioral of SumadorYMultiplicador is
signal resultadoAuxiliarSuma: bit_vector(7 downto 0);
signal senalSalidaAuxiliarSuma: std_ulogic;
signal resultadoAuxiliarProducto: bit_vector(7 downto 0);
signal senalSalidaAuxiliarProducto: std_ulogic;
component Suma4bits is
  Port (numero1, numero2: in bit_vector(3 downto 0);
        SumaTotal: out bit_vector(7 downto 0);
        senalSalidaZ: out std_ulogic);
end component;
component Multiplicador4bits is
  Port (numero1, numero2: in bit_vector(3 downto 0);
        MultiplicacionTotal: out bit_vector(7 downto 0);
        senalSalidaZ: out std_ulogic);
end component;

begin
--Cálculo de suma
    U1: Suma4bits port map(numero1=>numero1,
    numero2=>numero2,SumaTotal=>resultadoAuxiliarSuma,
    senalSalidaZ=>senalSalidaAuxiliarSuma);
--Cálculo de producto
    U2: Multiplicador4bits port map(numero1=>numero1,
    numero2=>numero2,MultiplicacionTotal=>resultadoAuxiliarProducto,
    senalSalidaZ=>senalSalidaAuxiliarProducto);
    
    resultado<=resultadoAuxiliarSuma when senalOp='0' else
               resultadoAuxiliarProducto when senalOp='1';
    senalSalidaZ<=senalSalidaAuxiliarSuma when senalOp='0' else
                  senalSalidaAuxiliarProducto when senalOp='1';
end Behavioral;
