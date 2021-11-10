	.globl test
test:
	ADD X19, X0, XZR // String
	ADD X20, X1, XZR // Word
    ADD X21, X30, XZR
Loop:
	
Exit:
	MOV X0, X22
	MOV X30, X20

	BR X30
