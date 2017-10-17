.MODEL SMALL
.STACK 100H
.DATA    

X DB 5 
Y DB ?

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
        
    MOV AH,2    
    ADD X,48
    MOV DL,X
    INT 21H 
    
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV Y,AL
         
    MOV AH,2  
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
     
    MOV DL,Y
    INT 21H   
     
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN