LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY bc IS
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
END ENTITY;

ARCHITECTURE bhv OF bc IS
	TYPE state_type IS (S0, S1, S2, S3, S4, S5, S6);
	SIGNAL state: state_type;
BEGIN
	PROCESS (clk, reset, iniciar, sttAEqualZero, sttBEqualZero, 
				sttContEqualZero, sttAZeroEqualOne)
	BEGIN
		IF reset = '1' THEN
			state <= S0;
		ELSIF clk'EVENT AND clk = '1' THEN
			CASE state IS
				WHEN S0 =>
					IF iniciar = '1' THEN
						state <= S1;
					END IF;
				WHEN S1 =>
					state <= S2;
				WHEN S2 =>
					IF sttAEqualZero = '0' AND sttBEqualZero = '0' THEN
						state <= S3;
					ELSE
						state <= S6;
					END IF;
				WHEN S3 =>
					IF sttContEqualZero = '1' THEN
						state <= S6;
					ELSE
						IF sttAZeroEqualOne = '1' THEN
							state <= S4;
						ELSE
							state <= S5;
						END IF;
					END IF;
				WHEN S4 =>
					state <= S5;
				WHEN S5 =>
					state <= S3;
				WHEN S6 =>
					state <= S0;
			END CASE;
		END IF;
	END PROCESS;
	
	PROCESS (state)
	begin
		cmdSetA <= '0';
		cmdSetB <= '0';
		cmdResetP <= '0';
		cmdSetCont <= '0';
		cmdMinusCont <= '0';
		cmdHalfP <= '0';
		cmdHalfA <= '0';
		cmdSumPH <= '0';
		cmdSetMult <= '0';

		CASE state IS
			WHEN S1 =>
				cmdSetA <= '1';
				cmdSetB <= '1';
				cmdResetP <= '1';
				cmdSetCont <= '1';
			WHEN S4 =>
				cmdSumPH <= '1';
			WHEN S5 =>
				cmdHalfP <= '1';
				cmdSetA <= '1';
				cmdHalfA <= '1';
				cmdSetCont <= '1';
				cmdMinusCont <= '1';
			WHEN S6 =>
				cmdSetMult <= '1';
			WHEN OTHERS =>
				NULL;
		END CASE;
	END PROCESS;
END ARCHITECTURE;