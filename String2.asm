.MODEL SMALL
.STACK 100H
.DATA
S DB 'SHAKHAWAT $'
T DB 10,13,'SHAWON $'
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,S
    MOV AH,9
    INT 21H
    
    LEA DX,T
    MOV AH,9
    INT 21H  
    
    MOV AH,4CH   
    INT 21H
    MAIN ENDP
END MAIN
    
    