DATA SEGMENT
     MES1 DB "ENTER CHARACTER :$"
     MES2 DB "helllo$"
     X DB ?
DATA ENDS
CODE SEGMENT 
    ASSUME DS:DATA ,CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      LEA DX,MES1     
      MOV AH,9
      INT 21H     
     
      MOV AH,01h
      INT 21H
      
     
    	LEA DX,MES2      
		MOV AH,09H
    	INT 21H   
     
      MOV AH,4CH
      INT 21H     
CODE ENDS
END START