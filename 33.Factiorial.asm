.MODEL SMALL
.STACK 100H
.CODE                         
FACTORIAL PROC
    MOV AH,1
    INT 21H
    MOV CX,0
    SUB AL,48
    MOV CL,AL
    MOV AX,1
     
     TOP: 
     CMP CX,1
     JE END
        MUL CX
        LOOP TOP
         
        RET
        END:
        MOV DX,AX
        MOV AH,2
        INT 21H
           
        
        FACTORIAL ENDP
END FACTORIAL