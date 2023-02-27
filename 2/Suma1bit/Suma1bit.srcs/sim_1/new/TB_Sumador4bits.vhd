----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.02.2023 18:04:43
-- Design Name: 
-- Module Name: TB_Sumador4bits - Behavioral
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

entity TB_Sumador4bits is
--  Port ( );
end TB_Sumador4bits;

architecture Behavioral of TB_Sumador4bits is
component Suma4bits is
  Port (numero1, numero2: in bit_vector(3 downto 0);
        SumaTotal: out bit_vector(4 downto 0));
end component;
signal numero1_tb, numero2_tb: bit_vector(3 downto 0);
signal SumaTotal_tb: bit_vector(4 downto 0);
begin
DUT: Suma4bits port map(numero1=>numero1_tb,numero2=>numero2_tb,
SumaTotal=>SumaTotal_tb);
process
begin
numero1_tb<="1010";
numero2_tb<="1011";
wait for 10ns;
numero1_tb<="1110";
numero2_tb<="0011";
wait for 10ns;
numero1_tb<="0010";
numero2_tb<="1010";
wait for 10ns;
numero1_tb<="1111";
numero2_tb<="1111";
wait for 10ns;
numero1_tb<="0000";
numero2_tb<="0000";
wait for 10ns;
numero1_tb<="0100";
numero2_tb<="0001";
wait;
end process;
end Behavioral;
