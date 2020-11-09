LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY multipler2v IS
	GENERIC (N: NATURAL := 8);
	PORT (
		-- entradas
		entA, entB, A, B, P, PH, cont: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
		clk, reset, iniciar: IN STD_LOGIC;
		-- saidas
		mult: OUT STD_LOGIC_VECTOR((2*N) - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE estrutura OF multipler2v IS
	COMPONENT bc IS
		PORT (
			-- entradas
			reset, clk, iniciar: IN STD_LOGIC;
			-- status
			sttAEqualZero,
			sttBEqualZero,
			sttContEqualZero,
			sttAZeroEqualOne: IN STD_LOGIC;
			-- comandos
			cmdSetA,
			cmdSetB,
			cmdResetP,
			cmdSetCont,
			cmdMinusCont,
			cmdHalfP,
			cmdHalfA,
			cmdSumPH,
			cmdSetMult: OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT bo IS
		GENERIC (N: NATURAL := 8);
		PORT (
			-- entradas
			entA, entB, A, B, P, PH, cont: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
			clk: IN STD_LOGIC;
			-- comandos
			cmdSetA,
			cmdSetB,
			cmdResetP,
			cmdSetCont,
			cmdMinusCont,
			cmdHalfP,
			cmdHalfA,
			cmdSumPH,
			cmdSetMult: IN STD_LOGIC;
			-- status
			sttAEqualZero,
			sttBEqualZero,
			sttContEqualZero,
			sttAZeroEqualOne: OUT STD_LOGIC;
			-- saidas
			mult: OUT STD_LOGIC_VECTOR((2*N) - 1 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL cmdSetA, cmdSetB, cmdResetP, cmdSetCont, cmdMinusCont, cmdHalfP,
			 cmdHalfA, cmdSumPH, cmdSetMult: STD_LOGIC;
	
	SIGNAL sttAEqualZero, sttBEqualZero, sttContEqualZero, sttAZeroEqualOne: STD_LOGIC;
BEGIN
	blocoOperativo: bo GENERIC MAP (N) PORT MAP (
		entA, entB, A, B, P, PH, cont, 
		clk, 
		cmdSetA, 
		cmdSetB,
		cmdResetP,
		cmdSetCont,
		cmdMinusCont,
		cmdHalfP,
		cmdHalfA,
		cmdSumPH,
		cmdSetMult,
		sttAEqualZero,
		sttBEqualZero,
		sttContEqualZero,
		sttAZeroEqualOne,
		mult
	);

	blocoControle: bc PORT MAP (
		reset, clk, iniciar,
		sttAEqualZero,
		sttBEqualZero,
		sttContEqualZero,
		sttAZeroEqualOne,
		cmdSetA,
		cmdSetB,
		cmdResetP,
		cmdSetCont,
		cmdMinusCont,
		cmdHalfP,
		cmdHalfA,
		cmdSumPH,
		cmdSetMult
	);
END estrutura;