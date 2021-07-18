	.globl test
test:
	LDUR X10, [X0,#0] // Load a
	LDUR X11, [X1,#0] // Load b

Exit:
    
	BR X30
