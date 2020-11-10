LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY bo is
	generic (n:natural);
	PORT (clk : IN STD_LOGIC;
			-- entrada dos sionais de controle
			mPH, srPh, cPH, srPL, cPL, cB, cmult, mFF, mcont, ccont, srAA, cAA : IN STD_LOGIC;
			-- entrada dos operandos
			entA, entB : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			--sinal que vai para o BC
			Az, Bz, contz, A0 : OUT STD_LOGIC;
			--resultado da multiplicaÃ§ao
			saida : OUT STD_LOGIC_VECTOR((2*n)-1 DOWNTO 0));
END bo;

ARCHITECTURE estrutura OF bo IS
	
COMPONENT registrador IS
		generic (n : natural);
		PORT (clk, carga : IN STD_LOGIC;
				d : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END COMPONENT;
	
COMPONENT mux2para1 IS
	generic (n : natural);
	PORT (a, b : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			sel: IN STD_LOGIC;
			y : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END COMPONENT;
	
COMPONENT somadorsubtrator IS
	generic (n : natural);
	PORT (a, b : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  op: IN STD_LOGIC;
		  Cout : OUT STD_LOGIC;
		  s : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END COMPONENT;
	
COMPONENT igualazero IS
	generic (n : natural);
	PORT (a : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			igual : OUT STD_LOGIC);
END COMPONENT;

COMPONENT PL IS
	generic (n:natural);
	PORT (clk, cPL, srPL : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  srIN : IN STD_LOGIC);
END COMPONENT;

COMPONENT PH IS
	generic (n:natural);
	PORT (clk, cPH, srPH, srIN : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		  srOUT : OUT STD_LOGIC);
END COMPONENT;

SIGNAL saidaSOMA, saimux1, saidaPH, saidaB, saidaPL, saidaA, saimuxFF, entradamuxFF : STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL entadaregMult : STD_LOGIC_VECTOR ((2*n)-1 DOWNTO 0);
SIGNAL saidamuxcont, saidaMENOS, saidacont, menos_um : STD_LOGIC_VECTOR (3 DOWNTO 0); --ta meio errado pq nÃ£o tÃ¡ igual no slide mas funciona
SIGNAL dPH, carry : STD_LOGIC;

BEGIN
	--componentes para somar entB
	mux1: mux2para1 
		GENERIC MAP (n => n)
		PORT MAP (a=>saidaSOMA, b=>(others=>'0'), sel=>mPH, y=>saimux1);

	PH1: PH 
		GENERIC MAP (n => n)
		PORT MAP (clk=>clk, cPH=>cPH, srPH=>srPH, d=>saimux1, q=>saidaPH, srOUT=>dPH, srIN=>saimuxFF(0));
	 
	PL1: PL
		GENERIC MAP (n => n)
		PORT MAP (clk=>clk, cPL=>cPL, srPL=>srPL, d=>(others=>'0'), q=>saidaPL, srIn=>dPH);
		
	regB: registrador
		GENERIC MAP (n => n)
		PORT MAP (clk=>clk, carga=>cB, d=>entB, q=>saidaB);
		
	compB: igualazero
		GENERIC MAP (n => n)
		PORT MAP (a=>saidaB, igual=>Bz);
	
	soma:somadorsubtrator -- op=0 == soma
		GENERIC MAP (n => n)
		PORT MAP (a=>saidaPH, b=>saidaB, op=>'0', s=>saidaSOMA, Cout=>carry);
		
	muxFF: mux2para1
		GENERIC MAP (n => 1)
		PORT MAP (a=>'0', b=>carry, sel=>mPH, y=>saimuxFF);
	
	--entradamuxFF <= (0 => carry, others => '0');
	
	regMult: registrador
		GENERIC MAP (n => 2*n)
		PORT MAP (clk=>clk, carga=>cmult, d=>entadaregMult, q=>saida);
		
	entadaregMult <= (saidaPH & saidaPL);
	
	--componetes para somar n --na (vdd tem um role do tamanho dos fios serem tipo 1+log2, logo esses negeric map dessa parte ta errado)
	muxcont: mux2para1
		GENERIC MAP (n => 4) 
		PORT MAP (a=>saidaMENOS, b=>"1000", sel=>mcont, y=>saidamuxcont);
		
	regCont : registrador
		GENERIC MAP (n => 4)
		PORT MAP (clk=>clk, carga=>ccont, d=>saidamuxcont, q=>saidacont);
		
	compcont: igualazero
		GENERIC MAP (n => 4)
		PORT MAP (a=>saidacont, igual=>contz);
		
	Subtracao: somadorsubtrator
		GENERIC MAP (n => 4)
		PORT MAP (a=>saidacont, b=>menos_um, op=>'1', s=>saidaMENOS);
	
	menos_um <= (0 => '1', others => '0');
	
	--componentes da parte da entA
	regA: PL
		GENERIC MAP (n => n)
		PORT MAP (clk=>clk, cPL=>cAA, srPL=>srAA, d=>entA, q=>saidaA, srIN=>'0');
		
	compA: igualazero
		GENERIC MAP (n => n)
		PORT MAP (a=>saidaA, igual=>Az);
		
	A0<= saidaA(0);
		
END estrutura;
