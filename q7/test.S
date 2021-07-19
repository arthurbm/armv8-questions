	.globl test
test:
	MOV X9, XZR  // Count of points player 1
	MOV X10, XZR  // Count of points player 2
	MOV X18, XZR  // Indice player 1
	MOV X21, XZR  // Indice player 2

LoopA:
	ADD X19, X0, X18
	LDRSB X11, [X19, #0]
	CBZ X11, ExitA
	ADD X18, X18, #1

	// 1 ponto
	CMP X11, #65	// X11 == A
	B.EQ IncA1
	CMP X11, #69	// X11 == E
	B.EQ IncA1
	CMP X11, #73	// X11 == I
	B.EQ IncA1
	CMP X11, #79	// X11 == O
	B.EQ IncA1
	CMP X11, #85	// X11 == U
	B.EQ IncA1
	CMP X11, #78	// X11 == N
	B.EQ IncA1
	CMP X11, #82	// X11 == R
	B.EQ IncA1
	CMP X11, #83	// X11 == S
	B.EQ IncA1

	// 2 pontos
	CMP X11, #68	// X11 == D
	B.EQ IncA2
	CMP X11, #71	// X11 == G
	B.EQ IncA2
	CMP X11, #84	// X11 == T
	B.EQ IncA2

	// 3 pontos
	CMP X11, #66	// X11 == B
	B.EQ IncA3
	CMP X11, #67	// X11 == C
	B.EQ IncA3
	CMP X11, #77	// X11 == M
	B.EQ IncA3
	CMP X11, #80	// X11 == P
	B.EQ IncA3

	// 4 pontos
	CMP X11, #70	// X11 == F
	B.EQ IncA4
	CMP X11, #72	// X11 == H
	B.EQ IncA4
	CMP X11, #86	// X11 == V
	B.EQ IncA4
	CMP X11, #87	// X11 == W
	B.EQ IncA4
	CMP X11, #89	// X11 == Y
	B.EQ IncA4

	// 5 pontos
	CMP X11, #75	// X11 == K
	B.EQ IncA5

	// 8 pontos
	CMP X11, #74	// X11 == J
	B.EQ IncA8
	CMP X11, #76	// X11 == L
	B.EQ IncA8
	CMP X11, #88	// X11 == X
	B.EQ IncA8

	// 10 pontoS
	CMP X11, #81	// X11 == Q
	B.EQ IncA10
	CMP X11, #90	// X11 == Z
	B.EQ IncA10

	B.NE LoopA

IncA1:
	ADD X9, X9, #1
    B LoopA

IncA2:
	ADD X9, X9, #2
    B LoopA

IncA3:
	ADD X9, X9, #3
    B LoopA

IncA4:
	ADD X9, X9, #4
    B LoopA

IncA5:
	ADD X9, X9, #5
    B LoopA

IncA8:
	ADD X9, X9, #8
    B LoopA

IncA10:
	ADD X9, X9, #10
    B LoopA

ExitA:
	ADD X5, X9, #0
	B LoopB

LoopB:
	ADD X20, X1, X21
	LDRSB X12, [X20, #0]
	CBZ X12, ExitB
	ADD X21, X21, #1

	// 1 ponto
	CMP X12, #65	// X12 == A
	B.EQ IncB1
	CMP X12, #69	// X12 == E
	B.EQ IncB1
	CMP X12, #73	// X12 == I
	B.EQ IncB1
	CMP X12, #79	// X12 == O
	B.EQ IncB1
	CMP X12, #85	// X12 == U
	B.EQ IncB1
	CMP X12, #78	// X12 == N
	B.EQ IncB1
	CMP X12, #82	// X12 == R
	B.EQ IncB1
	CMP X12, #83	// X12 == S
	B.EQ IncB1

	// 2 pontos
	CMP X12, #68	// X12 == D
	B.EQ IncB2
	CMP X12, #71	// X12 == G
	B.EQ IncB2
	CMP X12, #84	// X12 == T
	B.EQ IncB2

	// 3 pontos
	CMP X12, #66	// X12 == B
	B.EQ IncB3
	CMP X12, #67	// X12 == C
	B.EQ IncB3
	CMP X12, #77	// X12 == M
	B.EQ IncB3
	CMP X12, #80	// X12 == P
	B.EQ IncB3

	// 4 pontos
	CMP X12, #70	// X12 == F
	B.EQ IncB4
	CMP X12, #72	// X12 == H
	B.EQ IncB4
	CMP X12, #86	// X12 == V
	B.EQ IncB4
	CMP X12, #87	// X12 == W
	B.EQ IncB4
	CMP X12, #89	// X12 == Y
	B.EQ IncB4

	// 5 pontos
	CMP X12, #75	// X12 == K
	B.EQ IncB5

	// 8 pontos
	CMP X12, #74	// X12 == J
	B.EQ IncB8
	CMP X12, #76	// X12 == L
	B.EQ IncB8
	CMP X12, #88	// X12 == X
	B.EQ IncB8

	// 10 pontoS
	CMP X12, #81	// X12 == Q
	B.EQ IncB10
	CMP X12, #90	// X12 == Z
	B.EQ IncB10

IncB1:
	ADD X10, X10, #1
    B LoopB

IncB2:
	ADD X10, X10, #2
    B LoopB

IncB3:
	ADD X10, X10, #3
    B LoopB

IncB4:
	ADD X10, X10, #4
    B LoopB

IncB5:
	ADD X10, X10, #5
    B LoopB

IncB8:
	ADD X10, X10, #8
    B LoopB

IncB10:
	ADD X10, X10, #10
    B LoopB

ExitB:
	// ADD X6, X10, #0
	CMP X9, X10
	B.GT J1_A
	B.LT J2_B
	LDR X22, =69
	ADD X7, XZR, X22	// Empate = E
	B Exit

J1_A:
	LDR X22, =65
	ADD X7, XZR, X22	// Jogador 1 = A
	B Exit

J2_B:
	LDR x22, =66
	ADD X7, XZR, x22	// Jogador 2 = B

Exit:
	MOV X0, X7
	BR X30
