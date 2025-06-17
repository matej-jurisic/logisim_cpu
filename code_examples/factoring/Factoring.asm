MOV *35CA,A
MOV A,R0 ; *35CA > R0 // store the number in R0

MOV *2,A
MOV A,R1 ; *2 > R1 // first division checked with 2

ADR1:

MOV R0,A
MOD A,R1 ; check divisibility
JMP A NE 0, ADR2 ; if not divisible JMP to ADR2

MOV R0,A
DIV A,R1
MOV A,R0 ; divide R0 / R1 > R0

MOV R1,A
MOV A,*R3 ; store the prime factor

MOV R3,A
INC A
MOV A,R3 ; INC address for storage

MOV *1,A
MOV A,R1 ; reset the number we are dividing by

ADR2:

MOV R1,A
INC A
MOV A,R1 ; INC the number we are dividing by

JMP A < R0, ADR1
JMP A EQ R0, ADR1 ; JMP if (A <= R0) to ADR1

END