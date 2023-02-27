
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ArquitecturaPrincipal is
  Port (A,B,C,D: in bit; 
        F:out bit);
end ArquitecturaPrincipal;

architecture Behavioral of ArquitecturaPrincipal is
signal An,Bn,Cn,Dn,Fn: bit; 
signal m0,m1,m2,m3: bit;
component INV1 is
    Port (A: in bit; 
          F: out bit);
end component;
component And4 is
  Port (A,B,C,D:in bit; 
        F:out bit);
end component;
component OR4 is
  Port ( A,B,C,D:in bit;
         F: out bit);
end component;

begin
U1: INV1 port map(A=>A,F=>An);
U2: INV1 port map(A=>B,F=>Bn);
U3: INV1 port map(A=>C,F=>Cn);
U4: INV1 port map(A=>D,F=>Dn);
U5: And4 port map(A=>An,B=>Bn,C=>C,D=>D,F=>m0);
U6: And4 port map(A=>An,B=>B,C=>C,D=>D,F=>m1);
U7: And4 port map(A=>A,B=>Bn,C=>C,D=>D,F=>m2);
U8: And4 port map(A=>A,B=>B,C=>C,D=>D,F=>m3);
U9: OR4 port map(A=>m0,B=>m1,C=>m2,D=>m3,F=>Fn);
U10: INV1 port map(A=>Fn,F=>F);
end Behavioral;
