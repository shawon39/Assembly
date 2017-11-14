.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
      
    MOV AH,1
      
    INPUT:
      
        INT 21H  
        CMP AL,' '
        JNE INPUT
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN