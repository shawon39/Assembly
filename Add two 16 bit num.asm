ORG 100H
.MODEL SMALL
.STACK 100H
.DATA

  MSG1 DB "Enter The First Number: $"
  MSG2 DB 10,13, "Enter The Second Number: $"
  MSG3 DB 10,13, "Sum Of Two Number: $"       
  
  A DB 0
  B DB 0
  C DB 0
    
.CODE          

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48                        
    MOV A,AL 
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H     
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV B,AL    
    
    ADD AL,A
    MOV AH,0
    AAA        
    
    
    ADD AH,48
    ADD AL,48
    
    MOV BX,AX
    MOV AH,9   
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H  
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV DL,BL
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
