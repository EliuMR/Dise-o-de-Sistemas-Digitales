library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SenalAsignacionConcurrente is
  Port (A,B,C:in bit;
  F:out bit);
end SenalAsignacionConcurrente;

architecture Behavioral of SenalAsignacionConcurrente is
signal An,Bn,Cn:bit;
signal m0,m1,m2:bit;
begin
--Not´s
An<=not A;
Bn<=not B;
Cn<=not C;
--And´s
m0<=An and Bn and Cn;
m1<=An and Bn and C;
m2<=A and Bn and Cn;
--Or's
F<=m0 or m1 or m2;
end Behavioral;
