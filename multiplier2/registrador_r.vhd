LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY registrador_r IS
generic (n:natural);
PORT (clk, reset, carga : IN STD_LOGIC;
	  d : IN unsigned(n-1 DOWNTO 0);
	  q : OUT unsigned(n-1 DOWNTO 0));
END registrador_r;

ARCHITECTURE estrutura OF registrador_r IS
BEGIN
	PROCESS(clk, reset)
	BEGIN
		IF(reset = '1') THEN
			q <= (others => '0');
		ELSIF(clk'EVENT AND clk = '1' AND carga = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END estrutura;
