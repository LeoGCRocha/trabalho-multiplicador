LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY registrador IS
generic (n:natural);
PORT (clk, carga : IN STD_LOGIC;
	  d : IN unsigned(n-1 DOWNTO 0);
	  q : OUT unsigned(n-1 DOWNTO 0));
END registrador;

ARCHITECTURE estrutura OF registrador IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk = '1' AND carga = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END estrutura;
