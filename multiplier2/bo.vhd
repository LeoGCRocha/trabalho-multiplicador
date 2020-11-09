LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY bo IS
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
END ENTITY;

ARCHITECTURE bhv OF bo IS
	COMPONENT registrador IS
   	GENERIC (N: NATURAL);
		PORT (
			clk, carga, reset: IN STD_LOGIC;
			d: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
			q: OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT mux2para1 IS
   	GENERIC (N: NATURAL);
		PORT (
			a, b: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
         sel: IN STD_LOGIC;
         y: OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT somadorsubtrator IS
   	GENERIC (N: NATURAL);
		PORT (
			a, b: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
			op: IN STD_LOGIC;
			cout: OUT STD_LOGIC;
			s: OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
		);
	END COMPONENT;
	
   COMPONENT igualazero IS
   	GENERIC (N: NATURAL);
		PORT (
			a: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
         igual: OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT igualaum IS
		PORT (
			a: IN STD_LOGIC;
         igual: OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT rbitshift IS
		GENERIC (N: NATURAL);
		PORT (
			d: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
			q: OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL 
		regAout, muxAout, rbitshiftAout,
		regBout,
		regPHout, adderPHBout,
		regPout, rbitshiftPout,
		regContOut, minusContOut, muxContOut,
		regMultOut: STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
	
	SIGNAL coutPHB, coutCont: STD_LOGIC;

	CONSTANT zero: STD_LOGIC_VECTOR(N - 1 DOWNTO 0) := (OTHERS => '0');
	CONSTANT N_one: STD_LOGIC_VECTOR(N - 1 DOWNTO 0) := (zero(N - 2 DOWNTO 0) & '1');
	CONSTANT N_bits: STD_LOGIC_VECTOR(N - 1 DOWNTO 0) := STD_LOGIC_VECTOR(to_unsigned(N, N_one'length));
BEGIN
	-- A = entA
	-- A = A >> 1
	rbitshiftA: rbitshift GENERIC MAP (N) PORT MAP (regAout, rbitshiftAout);
	muxA: mux2para1 GENERIC MAP (N) PORT MAP (entA, rbitshiftAout, cmdHalfA, muxAout);
	regA: registrador GENERIC MAP (N) PORT MAP (clk, cmdSetA, '0', muxAout, regAout);

	-- B = entB
	regB: registrador GENERIC MAP (N) PORT MAP (clk, cmdSetB, '0', entB, regBout);

	-- PH = PH + B
	adderPHB: somadorsubtrator GENERIC MAP (N) PORT MAP (regPHout, regBout, '0', coutPHB, adderPHBout);
	regPH: registrador GENERIC MAP (N) PORT MAP (clk, cmdSumPH, '0', adderPHBout, regPHout);

	-- P = 0
	-- P = P >> 1
	rbitshiftP: rbitshift GENERIC MAP (N) PORT MAP (regPout, rbitshiftPout);
	regP: registrador GENERIC MAP (N) PORT MAP (clk, cmdHalfP, cmdResetP, rbitshiftPout, regPout);

	-- cont = N
	-- cont = cont - 1
	minusCont: somadorsubtrator GENERIC MAP (N) PORT MAP (regContOut, N_one, '1', coutCont, minusContOut);
	muxCont: mux2para1 GENERIC MAP (N) PORT MAP (N_bits, minusContOut, cmdMinusCont, muxContOut);
	regCont: registrador GENERIC MAP (N) PORT MAP (clk, cmdSetCont, '0', muxContOut, regContOut);

	-- mult = P
	regMult: registrador GENERIC MAP (N) PORT MAP (clk, cmdSetMult, '0', regPout, regMultOut);

	-- A == 0
	compAZero: igualazero GENERIC MAP (N) PORT MAP (regAout, sttAEqualZero);

	-- B == 0
	compBZero: igualazero GENERIC MAP (N) PORT MAP (regBout, sttBEqualZero);

	-- cont != 0
	compContZero: igualazero GENERIC MAP (N) PORT MAP (regContOut, sttContEqualZero);

	-- a(0) = 1
	compAZeroUm: igualaum PORT MAP (regAout(0), sttAZeroEqualOne);

	mult <= "00000000" & regMultOut;
END ARCHITECTURE;
