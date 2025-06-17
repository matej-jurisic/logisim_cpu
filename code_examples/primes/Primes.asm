; var count - number of divisions when remainder = 0
; var n - number to check if it's prime
; var m - number [1,n] for checking
; var adr - number that tracks memory address for storing prime numbers
; var ADR1 = 07
; var ADR2 = 14
; var ADR3 = 23

MOV *01,A
MOV A,R2 ; *01 > R2 // const for comparing count with *1

MOV *04,A
MOV A,R3 ; *04 > R3 // adr = 4 (initial value)

ADR1:

MOV *01,A
MOV A,01 ; *01 > 01 // m = 1

MOV 00,A
INC A
MOV A,00 ; 00 + *1 > 00 // INC n

MOV *00,A
MOV A,02 ; *00 > 02 // count = 0

ADR2:

MOV 01,A
MOV A,R0 ; 01 > R0
MOV 00,A
MOD A,R0 ; 00 MOD 01 > A // n % m > A

JMP A NE 0, ADR3 ; jmp if (n % m != 0) to ADR3 // skipping INC count

MOV 02,A
INC A ; 02 + *1 > A
JMP A GT R2, ADR1 ; jmp if (A > R2) to ADR1 // terminating check for n if count > 1
MOV A,02 ; A > 02 // INC count

ADR3:

MOV 00,A
MOV A,R1 ; 00 > R1 // n > R1 for comparison with m

MOV 01,A
INC A
MOV A,01 ; 01 + *1 > 01 // INC m

JMP A LT R1, ADR2 ; when m < n JMP to 18 // continues with the next m

MOV 00,A
MOV A,*R3 ; 00 > *R3 // Storing prime number at adr
MOV R3,A
INC A
MOV A,R3 ; R3 + *1 > R3 // INC adr
JMP ADR1 ; JMP to ADR1 // check next n