	.globl test
test:
	LDUR X9, [X0,#0] // Load a
	LDUR X10, [X1,#0] // Load b
	LDUR X11, [X0,#0] // Load m
    CMP X10, X11 // b == m ?
    B.NE Else // if last result was false, go to else
    SUB X11, X10, X9
    B Exit
Else:
    SUB X11, X9, X10
Exit:
    STUR X9,  [X0,#0]	// store a
	STUR X10, [X1,#0]	// store b
	STUR X11, [X2,#0]	// store m
	BR	 X30
