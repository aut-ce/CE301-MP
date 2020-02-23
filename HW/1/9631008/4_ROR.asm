		;Amir Mohammad Aghapoor 9631008 G3
		LDR		R1, =0b1101	;R1 = 0x0000000D sample input
		LDR		R2, =2	;R1 = 0x00000002 number of rotations
		;Rotate R1, R2 times right and move the result to R3
		MOV		R3, R1, ROR R2	;R3 = 0100 0000 0000 0000 0000 0000 0000 0011 = 0x40000003
		END
