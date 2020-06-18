    org 100h
;----Ejercicio 1
;    mov ax,10d
 ;   mov bx,3d
 ;  div bx
;   mov ax,[0200h]
 ;   mov bx,[0210h]
  ;  div bx
;
 ;   mov [0220h],ax
;


;-----Ejercicio 2

;section .text

;        mov cx,10d
;        mov bp,array
;        mov di,0000h
;guardar mov ax,[bp + di]
;        mov [200h + di],ax
;        inc di
 ;       loop guardar

 ;       mov ax,0d
;        mov cx,10d
 ;       mov di,0000h
;sumar   add ax,[200h + di]
;        inc di
;        loop sumar

;        mov ah,0h
;        mov cx,10d
;        div cx
;        mov [210h],ax
;section .data

;array db 11,22,40,4,43,6,7,18,9,10

;-----------Ejercicio 3
    mov ax,0h
    ;mov ax,120d
    ;mov bx,60d
    mov ax,[200h]
    mov bx,[210h]
    div bx
    cmp ax,0d
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



