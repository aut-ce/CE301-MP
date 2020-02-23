		LDR		R2,  =10
		LDR		R3, =0x8000000
AGAIN	ADD		R0, R0, #10
		SUBS	R2, R2, #1
		STR		R0, [R3]	;Store multiples of 10 at memory
		ADD		R3, R3, #4
		BNE		AGAIN
FOR_LOOP
		SUB		R3, R3, #4
		LDR		R4, [R3]
		ADD		R5, R5, R4	;Sum is accumulated at R5
		CMP		R3, #0x8000000
		BNE		FOR_LOOP	;if R3 <= 0x8000000
		END
