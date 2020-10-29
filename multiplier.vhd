library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity multiplier is
    generic (n:natural := 4);
    port(a, b   : in std_logic_vector(n-1 downto 0);
			inicio, reset, clk :in std_logic;
			pronto : out std_logic;
			saida : out std_logic_vector(n-1 downto 0));
         
END multiplier;

ARCHITECTURE estrutura OF multiplier IS

COMPONENT bo is
	PORT (clk : IN STD_LOGIC;
			ini, CP, CA, dec : IN STD_LOGIC;
			entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Az, Bz : OUT STD_LOGIC;
			saida, conteudoA, conteudoB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

COMPONENT bc IS
	PORT (Reset, clk, inicio : IN STD_LOGIC;
			Az, Bz : IN STD_LOGIC;
			pronto : OUT STD_LOGIC;
			ini, CA, dec, CP: OUT STD_LOGIC );
END COMPONENT;

	SIGNAL ini, CP, CA, dec, Az, Bz: STD_LOGIC;

BEGIN
	four_bit : bo 
		port map(clk=>clk, ini=>ini, CP=>CP, CA=>CA, dec=>dec, Az=>Az, Bz=>Bz, saida=>saida, entA=>a, entB=>b);
	bloco_controle : bc
		port map(Reset=>reset, clk=>clk, inicio=>inicio, Az=>Az, Bz=>Bz, pronto=>pronto, ini=>ini, CA=>CA, dec=>dec, CP=>CP);
END estrutura;