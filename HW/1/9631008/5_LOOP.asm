		;Amir Mohammad Aghapoor 9631008 G3
		LDR		R0, =0x100	;Start of array address
		MOV		R1, #1	;Number to add to array
LOOP
		STRB	R1, [R0], #1	;Store a byte at memory address R0 and increment R0 by one
		ADD		R1, R1, #1	;Increment added number by one
		CMP		R1, #10	;Check if 9 item is already added
		BMI		LOOP
		END
