.MODEL SMALL
.STACK 100H
.DATA
 
.CODE

MAIN PROC
 
    MOV BX,0
    MOV CL,1
 
    TOP:
       MOV AH,1
       INT 21H
     
       CMP AL,0DH
       JE END_
     
       SUB AL,30H
     
       SHL BX,CL
       OR BL,AL

       JMP TOP
     
    END_:  
 
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
 
    MOV CL,1
    MOV CH,0
    OUTPUT:
          CMP CH,16
          JE FINISH
          INC CH
          SHL BX,CL
          JC ONE
       
       
          MOV AH,2
          MOV DL,30H
          INT 21H
          JMP OUTPUT
       
    ONE:
        MOV AH,2
        MOV DL,31H
        INT 21H
        JMP OUTPUT
 
    FINISH:  
    MOV AH,4CH
    INT 21H
           
   
    MAIN ENDP
END MAIN