INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC  
    
    MOV CX,0
    
    MOV AH,1
    INT 21H
    
    WHILE:  
    
      CMP AL,0DH
      JE PRINT_VALUE
    
    PUSH AX
    INC CX
    INT 21H
    JMP WHILE
                  
                  
    PRINT_VALUE: 
    
         MOV AH,2
         PRINT 13
         PRINT 10  
         JCXZ EXIT
    
    TOP:
         POP DX
         INT 21H
         LOOP TOP
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN