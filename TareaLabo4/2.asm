    org 100h 

section .text
        mov cx,10d
        mov bp,array
        mov di,0000h
guardar mov ax,[bp + di]
        mov [200h + di],ax
        inc di
       loop guardar

        mov ax,0d
        mov cx,10d
        mov di,0000h
sumar   add ax,[200h + di]
        inc di
        loop sumar

        mov ah,0h
        mov cx,10d
        div cx
        mov [210h],ax

        int 20h
section .data

array db 11,22,40,4,33,6,7,18,9,10