.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
    
    FIRST:
    
    MOV AH,1
    
    INT 21H
    MOV BH,AL
    
    
    MOV AH,2     ;
    MOV DL,0AH   ;
    INT 21H      ; { New Line }
    MOV DL,0DH   ;
    INT 21H      ;
    
    CMP BH,'Y'
    JE IF
    JNE SECOND
    
    IF:
        MOV AH,2
        MOV DL,BH
        INT 21H   
        
        MOV AH,2     ;
        MOV DL,0AH   ;
        INT 21H      ; { New Line }
        MOV DL,0DH   ;
        INT 21H      ;
           
        JMP FIRST
         
           
    SECOND:  
    
        CMP BH,'y'
        JE IF
        JNE EXIT
        
    EXIT:
         
    MOV AH, 4CH
    INT 21H    
    MAIN ENDP
END MAIN   
     