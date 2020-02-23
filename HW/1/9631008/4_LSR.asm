		;Amir Mohammad Aghapoor 9631008 G3
		;Sample	Inputs
		LDR		R1, =0b1101	;R1 = 0x0000000D
		LDR		R2, =2	;R2 = 0x00000002 number of right rotations
		;Right	Rotating
		MOV		R4, R1	;Create backup from R1 in R4
		;In right shifting of R1, R2 bits are discarded
		;We will Shift R4 Left to get those bits to right position
		;Then Bitwise OR it with R1 to get real rotated value
		RSB		R5, R2, #32	;R5 = 32 - R2
		LSL		R4, R4, R5	;Left shift R4 to get discarded bits from the end to their place
		LSR		R1, R1, R2	;Logical Right Shift R1, R2 times
		ORR		R3, R1, R4	;R3 = R1 | R4 = 0100 0000 0000 0000 0000 0000 0000 0011 = 0x40000003
		END
