INCLUDE 'EMU8086.INC' 
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,2
    
    MOV BL,1
    MOV CL,1
    mov BH,5
    
    
    LOOP1:
         CMP BL,5
         JG EXIT
         
    LOOP2:
        CMP CL,BH  
        JG CHECK
        JL SPACE 
        
    CHECK:
        CMP CL,5
        JG NEWLINE
        
        MOV DL,'*'
        INT 21H 
        INC CL
        JMP LOOP2
        
    NEWLINE:
        PRINT 10    
        PRINT 13  
        MOV CL,1                                          
        DEC BH     
        INC BL 
        JMP LOOP1
        
    SPACE:
        PRINT 32
        INC CL
        JMP LOOP2 
    
    
    EXIT:
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN