	.globl test
test:
	LDUR X9, [X0, #0]
	LDUR X10, [X1, #0]

	Loop:
    CMP X9, X10
    B.LE Exit
    SUB X9, X9, #1
    B Loop

Exit:
	STUR X9, [X0, #0]
	BR X30
