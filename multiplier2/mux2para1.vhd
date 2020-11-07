LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY mux2para1 IS
  generic (n:natural);
  PORT ( a, b : IN unsigned(n-1 DOWNTO 0);
         sel: IN STD_LOGIC;
         y : OUT unsigned(n-1 DOWNTO 0));
  END mux2para1 ;

ARCHITECTURE comportamento OF mux2para1 IS
BEGIN
     WITH sel SELECT
         y <= a WHEN '0',
              b WHEN OTHERS;
END comportamento;
