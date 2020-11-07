LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY bo IS
generic (n:natural);
PORT (clk : IN STD_LOGIC;
      ini, CP, CA, dec : IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
      Az, Bz : OUT STD_LOGIC;
      saida, conteudoA, conteudoB : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END bo;

-- Sinais de comando
-- ini = RstP = mA = CB  => ini=1 somente em S1
-- CA=1 em S1 e em S4
-- dec = op = m1 = m2  => dec=1 somente em S4 (estado no qual ocorre A <= A - 1 )
-- CP=1 somente em S3 (estado no qual ocorre P <= P + B )

ARCHITECTURE estrutura OF bo IS
	
	COMPONENT registrador_r IS
    generic (n:natural);
	PORT (clk,  reset, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT registrador IS
    generic (n:natural);
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT mux2para1 IS
    generic (n:natural);
	PORT ( a, b : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
           sel: IN STD_LOGIC;
           y : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT somadorsubtrator IS
    generic (n:natural);
	PORT (a, b : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  op: IN STD_LOGIC;
		  s : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	END COMPONENT;
	
    COMPONENT igualazero IS
    generic (n:natural);
	PORT (a : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
          igual : OUT STD_LOGIC);
	END COMPONENT;
		
	SIGNAL saimux1, saimux2, saimux3, sairegP, sairegA, sairegB, saisomasub: STD_LOGIC_VECTOR (n-1 DOWNTO 0);

BEGIN
	mux1: mux2para1 
    GENERIC MAP (n => n)
    PORT MAP (saisomasub, entA, ini, saimux1);
	regP: registrador_r 
    GENERIC MAP (n => n)
    PORT MAP (clk, ini, CP, saisomasub, sairegP);
	regA: registrador 
    GENERIC MAP (n => n)
    PORT MAP (clk, CA, saimux1, sairegA);
	regB: registrador 
    GENERIC MAP (n => n)
    PORT MAP (clk, ini, entB, sairegB);
	mux2: mux2para1 
    GENERIC MAP (n => n)
    PORT MAP (sairegP, sairegA, dec, saimux2);	
	mux3: mux2para1 
    GENERIC MAP (n => n)
    PORT MAP (entB, (0 => '1', others => '0'), dec, saimux3);
	somasub: somadorsubtrator 
    GENERIC MAP (n => n)
    PORT MAP (saimux2, saimux3, dec, saisomasub);
	geraAz: igualazero 
    GENERIC MAP (n => n)
    PORT MAP (sairegA, Az);
	geraBz: igualazero 
    GENERIC MAP (n => n)
    PORT MAP (sairegB, Bz);	
	
	saida <= sairegP;
	conteudoA <= sairegA;
	conteudoB <= sairegB;

END estrutura;
