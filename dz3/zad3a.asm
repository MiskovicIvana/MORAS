//suma brojeva izmedju R0 i R1 (ukljucujuci njih)
//spremljena u R2

@R2
M = 0

@R0
D = M

(LOOP)
@R1
D = D - M
@END
D;JGT

@R2
D = M
M = D

@R0
M = M + 1

@LOOP
0;JMP
