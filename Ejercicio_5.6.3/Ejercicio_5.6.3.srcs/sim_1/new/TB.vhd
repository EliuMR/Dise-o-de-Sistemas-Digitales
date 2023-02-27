library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB is
--  Port ( );
end TB;

architecture Behavioral of TB is
component ArquitecturaPrincipal is
  Port (A,B,C: in bit;
        F:out bit);
end component;
signal A_tb,B_tb,C_tb,F_tb:bit;
begin
DUT: ArquitecturaPrincipal port map(A=>A_tb,B=>B_tb,C=>C_tb,F=>F_tb);

process
begin 
A_tb<='0';
B_tb<='0';
C_tb<='0';
wait for 10ns;
A_tb<='0';
B_tb<='0';
C_tb<='1';
wait for 10ns;
A_tb<='0';
B_tb<='1';
C_tb<='0';
wait for 10ns;
A_tb<='0';
B_tb<='1';
C_tb<='1';
wait for 10ns;
A_tb<='1';
B_tb<='0';
C_tb<='0';
wait for 10ns;
A_tb<='1';
B_tb<='0';
C_tb<='1';
wait for 10ns;
A_tb<='1';
B_tb<='1';
C_tb<='0';
wait for 10ns;
A_tb<='1';
B_tb<='1';
C_tb<='1';
wait;
end process;


end Behavioral;
