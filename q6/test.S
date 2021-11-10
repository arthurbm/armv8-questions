	.globl test
test:
	MOV X9, XZR // Count of vogals number
	MOV X18, XZR // Indice

Loop:
	ADD X19, X0, X18
	LDRSB X11, [X19, #0]
	CBZ X11, Exit
	ADD X18, X18, #1

	CMP X11, #97 // a
	B.EQ Inc
	CMP X11, #101 // e
	B.EQ Inc
	CMP X11, #105 // i
	B.EQ Inc
	CMP X11, #111 // o
	B.EQ Inc
	CMP X11, #117 // u
	B.EQ Inc

	B.NE Loop

Inc:
	ADD X9, X9, #1
    B Loop

Exit:
	ADD X0, X9, #0
	BR X30

