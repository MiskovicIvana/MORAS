//ideja: pretp da je najmanji poz br u RAM[0]
//njega upisemo u RAM[5]
//usporedjujemo ga s ostalim (RAM[1] do RAM[4])
//ako je RAM[R6] (pokazivac za iteraciju) < RAM[5], RAM[5] prima vrij. R6

@0
D = M
@5
M = D

@1
D = A
@R6
M = D

(LOOP)
@R6
D = M
@5
D = D - M 
@END
D; JGE

@R6
A = M
D = M
@5
M = D

@R6
M = M + 1
@LOOP
0; JMP

(END)
@END
0; JMP
