INCLUDE 'EMU8086.INC' 
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,2
    
    MOV BL,1
    MOV CL,1
    mov bH,5
    
    
    LOOP1:
         CMP BL,5
         JG EXIT
         
    LOOP2:
        CMP CL,BH   ; AKHON BH ER VALUE 5  
        JG NEWLINE
        MOV DL,'*'
        INT 21H
        INC CL
        JMP LOOP2
        
        
    NEWLINE:
        PRINT 10    ; FOR PRINTING NEWLINE
        PRINT 13    ; REMOVE EXTRA SPACE
        MOV CL,1    ; CL er value 5 hoi geche so next bar loop er vitore dukar jonno 1 kore dilam
                    ; 5 er beshi hole exit e jabe, so ai jonno cl er value 1 kora holo    
                    
        DEC BH      ; AKHANE BH ER VALUE 4,3,2,1 KORE KOMTECHE
        INC BL       
        JMP LOOP1 
    
    
    EXIT:
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN