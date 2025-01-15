//na RAM[100] pocinje polje
//duljina polja R0

//sortiramo pomocu Bubble sort-a


@100
D = A
@startAdd
M = D

@R0
D = M
@n
M = D


//vanjska petlja koja provjerava jesmo li prosli sve elem.
(OUTER_LOOP)
@n
D = M
@END
D;JEQ

@startAdd
D = M
@first
M = D

@first
D = M + 1
@second
M = D


//unutarnja petlja usporedjuje susjedne elem
//i radi zamjenu mjesta ako je potrebno (first > second)
(INNER_LOOP)
@first
D = M
@second
D = D - M
@SWAP
D;JGT

//ako su dobro poredani, prelazimo na sljedeci elem.
@first
M = M + 1
@second
M = M + 1

@INNER_LOOP
0;JMP


//zamjena dva elem.
(SWAP)
@first
D = M
@startAdd
A = M
M = D

@second
D = M
@first
A = M
M = D

@INNER_LOOP
0;JMP

(END)
@END
0;JMP
