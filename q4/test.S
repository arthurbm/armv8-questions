	.globl test
test:
	LDUR X10, [X0, #0]
	LDR X12, =0xFFFFFFFFFFFFFFFF // Copy 32 bits 0 to X12 register
	EOR X10, X10, X12 // 101010... XOR 111111... = 01010101...
	STUR X10, [X0, #0]
	BR X30