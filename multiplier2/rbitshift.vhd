LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY rbitshift IS
	GENERIC (N: NATURAL);
	PORT (
		d: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
		q: OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
	);
END rbitshift;

ARCHITECTURE estrutura OF rbitshift IS
BEGIN
	q <= '0' & d(N - 2 DOWNTO 0);
END estrutura;
