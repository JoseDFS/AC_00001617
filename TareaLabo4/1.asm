   
    org 100h

    mov ax,10d
    mov bx,3d
    div bx
    mov ax,[0200h]
    mov bx,[0210h]
    div bx

    mov [0220h],ax

    int 20h