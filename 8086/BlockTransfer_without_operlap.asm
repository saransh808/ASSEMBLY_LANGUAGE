DATA SEGMENT
STRING1 DB 01H,02H,03H,04H,05H
STRING2 DB 4 DUP(0)
DATA ENDS
 
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA
MOV DS,AX
MOV ES,AX
LEA SI,STRING1
LEA DI,STRING2
MOV CX,05H
CLD
REP MOVSB
INT 3
CODE ENDS
END START