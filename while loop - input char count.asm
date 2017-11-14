.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC    
    
    INCLUDE 'EMU8086.INC'
    
    MOV DX,0
    MOV AH,1
    INT 21H
    
    CMP AL,13
    JE COUNT
    
    INPUT:  
     
        INC DX 
        MOV BX,DX
        INT 21H
        CMP AL,13
        JE  COUNT
        JMP INPUT
       
    
    COUNT: 
          
        PRINT 10
        PRINT 13 
        
        MOV AH,2
              
        ADD BX,48
        MOV DX,BX   
        INT 21H  
        
      
      MOV AH,4CH
      INT 21H
      MAIN ENDP
END MAIN