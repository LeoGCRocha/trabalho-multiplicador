LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY bo IS
generic (N:natural := 8);
PORT (entA, entB : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		clk, CB, SRPH, CPH, MFF, CCONT, CMULT: in std_logic;
      Az, Bz, contz, a: OUT STD_LOGIC;
      mult : OUT STD_LOGIC_VECTOR((n*2)-1 DOWNTO 0));
END bo;

ARCHITECTURE estrutura OF bo IS
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
		  cout: out std_logic;
		  s : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	END COMPONENT;
	
   COMPONENT igualazero IS
   generic (n:natural);
	PORT (a : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
         igual : OUT STD_LOGIC);
	END COMPONENT;
	-- mux para std_logic, 1bit apenas.
	 component mux1 is
	 port ( a, b : in std_logic;
			 sel: in std_logic;
			 y : out std_logic);
	 end component;
	 -- registrador PH/PL EXTRA
	 component regextra is 
	 generic (n: natural);
	 port (clk, carga, sh, in_sh: in std_logic;
			 d: in std_logic_vector (N-1 downto 0);
			 q: out std_logic_vector (N-1 downto 0));
	 end component;
	 -- flip flop
	 component flip_flop is
	 port (clk: in std_logic;
		  d : in std_logic;
		  q : out std_logic);
	 end component;
	 -- Saidas para os muxes
	 signal  saidaMuxPh, saidaRegPh, saidaRegPL, saisoma,sairegB, sairegA: std_logic_vector(N-1 downto 0);
    signal  saidaMuxCont, sairegcont, saisub: std_logic_vector ((N/2)-1 downto 0);
    signal  sairegmult: std_logic_vector((N*2)-1 downto 0);
    signal  coutsoma, outsub, saimuxflipflop, zerosc, Aze, Bze, saiflipflop: std_logic; -- outsub é um sinal useless
	 
	 constant zero: std_logic_vector(N-1 downto 0) := (others => '0'); -- vetor padrao completo de zeros com tamanho N
	 constant num : std_logic_vector((N/2)-1 downto 0) := (zero((N/2)-2 DOWNTO 0) & '1'); -- pegando parte para soma.
	 constant numero_bits : std_logic_vector((N/2)-1 downto 0) := std_logic_vector(to_unsigned(N, num'length)); -- numero totais de operacoes
BEGIN
	-- flip flop
	flop: flip_flop port map (clk, saimuxflipflop, saiflipflop);
	-- mux PH
	muxPH: mux2para1 generic map(n => N) port map (saisoma,zero, CB, saidaMuxPh);
	-- mux Cont
	muxCont: mux2para1 generic map(n => N/2) port map (saisub, numero_bits, CB, saidaMuxCont);
	-- muxCout 
	muxCout: mux1 port map (coutsoma, '0', MFF, saimuxflipflop);
	-- registrador PH
	regPH: regextra generic map (n => N) port map (clk, CPH, SRPH, saiflipflop, saidaMuxPh, saidaRegPh);
	-- registrador PL
	regPL: regextra generic map(n => N) port map (clk, CB, SRPH, saidaRegPh(0), zero, saidaRegPL);
	-- Registradores A & B
	regA: regextra generic map(n => N) port map(clk, CB, SRPH, '0', entA, sairegA);
	regB: registrador generic map(n => N) port map (clk, CB, entB, sairegB);
	-- Registrador cont 
	regCont: registrador generic map(n => N/2) port map (clk, CCONT, saidaMuxCont, sairegcont);
	-- Registrador mult
	regmult: registrador generic map(n => N*2) port map(clk, cmult, saidaRegPh & saidaRegPL, sairegmult);
	-- Somador/sub
	somador: somadorsubtrator generic map(n => N) port map (saidaRegPh, sairegB, '0', coutsoma, saisoma);
	subrtador: somadorsubtrator generic map(n => (N/2))  	port map (sairegcont, num, '1', outsub, saisub);
	-- Igualdade a zero
	Azero:    igualazero generic map(n => N) port map (sairegA, Aze);
	Bzero:    igualazero generic map(n => N) port map (sairegB, Bze);
	contadorzero: igualazero  generic map(n => (N/2)) port map (sairegcont, zerosc); 
	-- Atribuição de valores finais
	contz <= zerosc;
	a <= sairegA(0);
	mult <= sairegmult;
	Az <= Aze;
	Bz <= Bze;
END estrutura;
