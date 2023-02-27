----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.02.2023 18:56:17
-- Design Name: 
-- Module Name: SistemaTerminosMinimos - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SistemaTerminosMinimos is
 Port (A,B,C: in bit; 
       F: out bit );
end SistemaTerminosMinimos;

architecture Behavioral of SistemaTerminosMinimos is
signal An,Bn,Cn: bit; 
signal m0,m1,m2,m3: bit;
begin
--Not´s
An<=not A;
Bn<=not B;
Cn<=not C;
--And's
m0<=An and Bn and C;
m1<=A and Bn and Cn;
m2<=An and B and C;
m3<=A and B and Cn;
--Or's
F<=m0 or m1 or m2 or m3;

end Behavioral;
