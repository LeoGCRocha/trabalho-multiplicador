library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.multiplier1_1_pkg.all;
 
entity multiplier1_1 is
    generic (n:natural := N_BITS);
    port(a, b                   : in std_logic_vector(n-1 downto 0);
            inicio, reset, clk  : in std_logic;
            pronto              : out std_logic;
            saida               : out std_logic_vector((2*n)-1 downto 0));
END multiplier1_1;

ARCHITECTURE estrutura OF multiplier1_1 IS

COMPONENT bo is
    generic (n:natural);
    PORT (clk, ini, CP, CA, dec : IN STD_LOGIC;
            entA, entB          : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
            Az, Bz              : OUT STD_LOGIC;
            saida               : OUT STD_LOGIC_VECTOR((2*n)-1 DOWNTO 0));
END COMPONENT;

COMPONENT bc IS
    PORT (Reset, clk, inicio    : IN STD_LOGIC;
            Az, Bz              : IN STD_LOGIC;
            pronto              : OUT STD_LOGIC;
            ini, CA, dec, CP    : OUT STD_LOGIC);
END COMPONENT;

    SIGNAL ini, CP, CA, dec, Az, Bz: STD_LOGIC;

BEGIN
    bloco_operacao : bo 
        generic map (n => n)
        port map(clk=>clk, ini=>ini, CP=>CP, CA=>CA, dec=>dec, Az=>Az, Bz=>Bz, saida=>saida, entA=>a, entB=>b);
    bloco_controle : bc
        port map(Reset=>reset, clk=>clk, inicio=>inicio, Az=>Az, Bz=>Bz, pronto=>pronto, ini=>ini, CA=>CA, dec=>dec, CP=>CP);
END estrutura;
