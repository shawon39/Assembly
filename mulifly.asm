.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC     
    
   MOV AH,1
   INT 21H
   SUB AL,48    
   mov bl,al
   INT 21H
   SUB al,48
   
   MUL BL   
   
   mov ah,2
   add al,48
   mov dl,al
   int 21h
             
             
 mov ah,4ch
 int 21h
 main endp
end main