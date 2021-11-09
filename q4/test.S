	.globl test
test:
	LDUR X10, [X0, #0]
	LDR X12, =0xFFFFFFFFFFFFFFFF // Copy 32 bits 0 to X12 register
	EOR X10, X10, X12 // 101010... XOR 111111... = 01010101... (if it's one, will become 0, and if it's 0 will become 1, because of the xor logic)
	STUR X10, [X0, #0]
	BR X30
