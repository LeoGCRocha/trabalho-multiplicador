LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY PL IS
generic (n:natural);
PORT (clk, cPL, srPL : IN STD_LOGIC;
	  d : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	  q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	  srIn : IN STD_LOGIC;
END registrador;

ARCHITECTURE estrutura OF PL is
BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk = '1' AND cPL = '1') THEN
			q <= d;
		END IF;
		IF (clk'EVENT AND clk = '1' AND srPL = '1') THEN
			q <= shift_right(unsigned(d), 1);
			q(n-1) <= srIn;
		END IF;
	END PROCESS;
END estrutura;