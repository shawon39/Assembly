.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
         MOV AH,1
         INT 21H
        
         MOV BL,AL
         INT 21H
        
         MOV CL,AL
    
         ADD BL,CL    ; BL= BL+CL       
         
         ;FOR subtract: SUB BL,CL    ; BL= BL-CL
         
         
         MOV AH,2
         MOV DL,0DH
         INT 21H       ; For New Line
         MOV DL,0AH
         INT 21H
                
    
         MOV AH,2 
         SUB BL,48   ; Bcz 48 beshi print    ; FOR subtract ADD BL,48              
         MOV DL,BL   ; korteche. korle 
         INT 21H     ; character chole ashe 
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    