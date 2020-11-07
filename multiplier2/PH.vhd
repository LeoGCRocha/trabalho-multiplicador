LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY PH IS
generic (n:natural);
PORT (clk, cPH, srPH : IN STD_LOGIC;
	  d : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	  q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	  srOUT : OUT STD_LOGIC;
END registrador;

ARCHITECTURE estrutura OF PH is
BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk = '1' AND carga = '1') THEN
			q <= d;
		END IF;
		IF (clk'EVENT AND clk = '1' AND srPL = '1') THEN
			srOUT <= q(0);
			q <= shift_right(unsigned(d), 1);
	END PROCESS;
END estrutura;