.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1
    
    INT 21H
    MOV BL,AL
    
    INT 21H
    MOV BH,AL
    
    MOV AH,2     ;
    MOV DL,0AH   ;
    INT 21H      ; { New Line }
    MOV DL,0DH   ;
    INT 21H      ;
    
    CMP BH,BL
    JGE IF
    JL ELSE
    
    IF:
        MOV AH,2
        MOV DL,BH
        INT 21H
        JMP EXIT
        
    ELSE:
        MOV AH,2
        MOV DL,BL
        INT 21H  
           
    EXIT:  
         
    MOV AH, 4CH
    INT 21H    
    MAIN ENDP
END MAIN   
     