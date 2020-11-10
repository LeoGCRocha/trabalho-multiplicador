LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY PL IS
	generic (n:natural);
	PORT (clk, cPL, srPL : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  srIN : IN STD_LOGIC);
END PL;

ARCHITECTURE estrutura OF PL is
signal var: STD_LOGIC_VECTOR(n-1 DOWNTO 0);

BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk = '1' AND cPL = '1') THEN
			var <= d;			
		END IF;
		IF (clk'EVENT AND clk = '1' AND srPL = '1') THEN
			var <= srIN & var(n-1 downto 1);
		END IF;
		
	END PROCESS;
	q <= var;
END estrutura;