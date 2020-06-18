    org 100h 

    mov ax,0h
    mov bx,0h
    ;mov ax,120d
    ;mov bx,60d
    mov ax,[200h]
    mov bx,[210h]
    div bx
    cmp ax,0h
    jne correcto

    mov cl,"E"
    mov [220h],cl
    mov cl,"R"
    mov [221h],cl
    mov cl,"R"
    mov [222h],cl
    mov cl,"O"
    mov [223h],cl
    mov cl,"R"
    mov [224h],cl

    int 20h

correcto mov [220h],ax

    int 20h

  