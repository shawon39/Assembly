.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    
    cmp al,41h
    jl exit
    cmp al,5ah
    jg exit
    
    mov ah,2
    mov dl,al
    int 21h
    
    exit: 
    mov ah,4ch 
    
    main endp
end main