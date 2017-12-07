
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC   
    
        XOR BX,BX ;CLEAR BX
        MOV CL,4  ;COUNTER FOR 4 SHIFTS
    
        MOV AH,1 
        INT 21H
                  
       WHILE:     
       
        CMP AL,0DH   ;compare
        JE END_WHILE ;YES EXIT

        CMP AL,41H   ;COMPARE INPUT WITH A
        JGE LETTER 

        SUB AL,48
        JMP SHIFT 

      LETTER:
        SUB AL,37H

      SHIFT:
        SHL BX,CL
        OR BL,AL
        INT 21H
        JMP WHILE

      END_WHILE: 
      
        PRINTN
        MOV CX,4
        MOV AH,2
    
      WHILE2:
        MOV DL,BH
        SHR DL,4
        SHL BX,4

        CMP DL,10
        JGE LETTER2
    
        ADD DL,48
        INT 21H
        JMP END_LOOP2

     LETTER2:
        ADD DL,55
        INT 21H

     END_LOOP2:
        LOOP WHILE2

      MOV AH,4CH
      INT 21H
      MAIN ENDP
END MAIN