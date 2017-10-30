INCLUDE 'EMU8086.INC' 
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1
    
    INT 21H
    MOV BL,AL
    
    CMP BL,45
    JE IF
    JNE ELSE
    
    IF:
        INT 21H
        MOV CL,AL
        INT 21H 
        MOV BH,AL
        PRINT 'NEGATIVE'
        JMP MURI_KHA
        
    ELSE:
        INT 21H
        MOV CL,AL
         PRINT 'POSITIVE'
        JMP MURI_KHA 
        
    MURI_KHA:
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN