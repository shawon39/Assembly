.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1   ; Input
    INT 21H  
    MOV BL,AL 
    
    ; Decimal way...... 
    
    ;MOV AH,2   ;For Showing Output
    ;MOV DL,10
    ;INT 21H
    ;MOV DL,13
    ;INT 21H 
    
    ; Hexa Decimal way.....
    
    MOV AH,2
    MOV DL,0AH
    INT 21H      ; { New Line }
    MOV DL,0DH
    INT 21H

    
    
    MOV AH,2    ; Output
    MOV DL,BL   
    INT 21H
              
              
    MOV AH, 4CH
    INT 21H     ; Exit
    MAIN ENDP
END MAIN