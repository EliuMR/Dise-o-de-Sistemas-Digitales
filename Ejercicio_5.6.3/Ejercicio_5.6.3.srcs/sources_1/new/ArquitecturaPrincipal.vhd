library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArquitecturaPrincipal is
  Port (A,B,C: in bit;
        F:out bit);
end ArquitecturaPrincipal;

architecture Behavioral of ArquitecturaPrincipal is
signal An,Bn,Cn: bit;
signal m0,m1,m2: bit;
component Inv1 is
 Port (A: in bit;
       F: out bit );
end component;
component  And3 is
 Port (A,B,C: in bit;
       F: out bit );
end component;
component Or3 is
  Port (A,B,C: in bit;
        F: out bit );
end component;
begin
U1: Inv1 port map(A=>A,F=>An);
U2: Inv1 port map(A=>B,F=>Bn);
U3: Inv1 port map(A=>C,F=>Cn);
U4: And3 port map(A=>An,B=>Bn,C=>Cn,F=>m0);
U5: And3 port map(A=>An,B=>Bn,C=>C,F=>m1);
U6: And3 port map(A=>A,B=>Bn,C=>Cn,F=>m2);
U7: Or3 port map(A=>m0,B=>m1,C=>m2,F=>F);

end Behavioral;
