
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB is
--  Port ( );
end TB;

architecture Behavioral of TB is
component
ArquitecturaPrincipal is
  Port (A,B,C,D: in bit; 
        F:out bit);
end component;
signal A_tb,B_tb,C_tb,D_tb,F_tb: bit;

begin
DUT: ArquitecturaPrincipal port map(A=>A_tb,B=>B_tb,C=>C_tb,D=>D_tb,F=>F_tb);
process
begin 
A_tb<='0';
B_tb<='0';
C_tb<='0';
D_tb<='0';
wait for 10ns;
A_tb<='0';
B_tb<='0';
C_tb<='0';
D_tb<='1';
wait for 10ns;
A_tb<='0';
B_tb<='0';
C_tb<='1';
D_tb<='0';
wait for 10ns;
A_tb<='0';
B_tb<='0';
C_tb<='1';
D_tb<='1';
wait for 10ns;
A_tb<='0';
B_tb<='1';
C_tb<='0';
D_tb<='0';
wait for 10ns;
A_tb<='0';
B_tb<='1';
C_tb<='0';
D_tb<='1';
wait for 10ns;
A_tb<='0';
B_tb<='1';
C_tb<='1';
D_tb<='0';
wait for 10ns;
A_tb<='0';
B_tb<='1';
C_tb<='1';
D_tb<='1';

wait for 10 ns;
A_tb<='1';
B_tb<='0';
C_tb<='0';
D_tb<='0';
wait for 10ns;
A_tb<='1';
B_tb<='0';
C_tb<='0';
D_tb<='1';
wait for 10ns;
A_tb<='1';
B_tb<='0';
C_tb<='1';
D_tb<='0';
wait for 10ns;
A_tb<='1';
B_tb<='0';
C_tb<='1';
D_tb<='1';
wait for 10ns;
A_tb<='1';
B_tb<='1';
C_tb<='0';
D_tb<='0';
wait for 10ns;
A_tb<='1';
B_tb<='1';
C_tb<='0';
D_tb<='1';
wait for 10ns;
A_tb<='1';
B_tb<='1';
C_tb<='1';
D_tb<='0';
wait for 10ns;
A_tb<='1';
B_tb<='1';
C_tb<='1';
D_tb<='1';
wait;

end process;

end Behavioral;
