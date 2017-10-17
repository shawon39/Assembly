.MODEL SMALL
.STACK 100H 
.CODE

MAIN PROC 
    
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    INT 21H
    MOV CL,AL 
    
    
    MOV AH,2 
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    ADD BL,CL
    SUB BL,48
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH   
    MAIN ENDP
END MAIN