LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY PH IS
generic (n:natural := 4);
PORT (clk, cPH, srPH : IN STD_LOGIC;
	  d : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	  q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	  srOUT : OUT STD_LOGIC);
END PH;

ARCHITECTURE estrutura OF PH is
signal var: STD_LOGIC_VECTOR(n-1 DOWNTO 0);

BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk = '1' AND cPH = '1') THEN
			var <= d;
		END IF;
		IF (clk'EVENT AND clk = '1' AND srPH = '1') THEN
			srOUT <= var(0);
			var <= '0' & var(n-1 downto 1);
		END IF;
		q <= var;
	END PROCESS;
END estrutura;