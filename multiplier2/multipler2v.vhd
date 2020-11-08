library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multipler2v is
    generic (n:natural := 8);
		port (iniciar, reset, clk: in std_logic;
       entA, entB: in std_logic_vector (N-1 downto 0);
       pronto: out std_logic;
       mult: out std_logic_vector ((n*2)-1 downto 0));
END multipler2v;

ARCHITECTURE estrutura OF multipler2v IS

	COMPONENT bo is
	generic (N:natural := 8);
	PORT (entA, entB : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			clk, CB, SRPH, CPH, MFF, CCONT, CMULT: in std_logic;
			Az, Bz, contz, a: OUT STD_LOGIC;
			mult : OUT STD_LOGIC_VECTOR((n*2)-1 DOWNTO 0));
	END COMPONENT;

	COMPONENT bc IS
	PORT (Reset, clk, inicio : IN STD_LOGIC;
			Az, Bz : IN STD_LOGIC;
			pronto, ini, CA, dec, CP: OUT STD_LOGIC );
	END COMPONENT;

	signal carga_B, shift_reg_PH, carga_PH, mux_FF, carga_reg_cont, carga_reg_mult, A_zero, B_zero, spronto, contador_zero, zerinhoA: std_logic;
	signal res: std_logic_vector ((N*2)-1 downto 0);
	
	BEGIN
	boSignal: bo generic map(N => N) port map (entA, entB,clk, carga_B, shift_reg_PH, carga_PH, mux_FF, carga_reg_cont, carga_reg_mult, A_zero, B_zero, contador_zero, zerinhoA, res);
	-- ADICIONAR BLOCO DE CONTROLE!!!!!
	
	pronto <= spronto;
	mult <= res; 
END estrutura;