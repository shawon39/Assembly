
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE 
.DATA

MAIN PROC  
    
    MOV AH,1
    INT 21H
    MOV CL,AL
       
    MOV BL,CL
    
    CMP BL,0
    JL L1 
      
    PRINT 'NUMBER IS POSITIVE'
    INT 21H  
    
    JMP EXIT
    
    L1:
    
    PRINT 'NUMBER IS NEGATIVE'
    INT 21H 
    
    
    EXIT:  
    
     
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    