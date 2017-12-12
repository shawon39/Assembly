include 'emu8086.inc'
.model small
.stack 100h
.code
.data

main proc
    
    mov bl,1
    mov cl,1
    mov bh,5
    mov ch,1
    mov ah,1
    
    mov ah,2     
    
    space:
        cmp ch,ah
        je  for1
        print ' '
        inc ch
        jmp space
    
    for1:  
        cmp bl,5
        jg exit
        
    printing:
        cmp cl,bh  
        jg sesh
        print '* '
        inc cl
        jmp printing
    sesh:
        printn ''    
        mov cl,1
        inc bl 
        dec bh  
        inc ah   
        mov ch,1
        jmp space
    exit:
        
    mov ah,4ch
    int 21h
    main endp
end main