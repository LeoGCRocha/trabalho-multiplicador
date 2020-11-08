LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY somadorsubtrator IS
generic (n:natural);
PORT (a, b : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
      op: IN STD_LOGIC;
		cout: out std_logic;
      s : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END somadorsubtrator;

ARCHITECTURE estrutura OF somadorsubtrator IS
SIGNAL operacao: std_logic_vector(n downto 0);
BEGIN
	WITH op SELECT
         operacao <= ('0'&a) + ('0'&b) WHEN '0',
              ('0'&a) -('0'&b) WHEN OTHERS;
	cout <= operacao(n);
	s <= operacao(n-1 downto 0);
END estrutura;
