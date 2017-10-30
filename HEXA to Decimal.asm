.MODEL SMALL
.STACK 100H
.DATA

VAR DB ?

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV VAR,AL    
    
    ;....................  
    
    MOV AH,2
    MOV DL,0AH
    INT 21H      ; { New Line }
    MOV DL,0DH
    INT 21H           
    
    ;....................
    
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    MOV AH,2
    SUB VAR,17
    MOV DL,VAR
    INT 21H      
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN