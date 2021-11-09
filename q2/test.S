	.globl test
test:
	LDUR X9, [X0,#0] // Load a
	LDUR X10, [X1,#0] // Load b
	LDUR X11, [X2,#0] // Load c
	LDUR X12, [X3,#0] // Load x

    ADD X12, XZR, XZR // x = 0
    CMP X9, XZR
   	B.LT Exit // (a < 0) == true?, that is, (a >= 0) == false?
    CMP X10, #32
    B.GT Exit // (b > 32) == true, that is, (b <= 32) == false?
    CMP X11, #25
    B.LE Exit // (c <= 25) == true?, that is, (c > 25) == false?
    ADD X12, X12, #1

Exit:
    STUR X12, [X3,#0]	// store x value
	BR X30
