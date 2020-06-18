;---------------Ejercicio 1-------------------------
	org	100h

section .text	 
	mov 	dx, msg_pr
	call 	w_strng
	mov     dx, 0000h
	mov 	si, 0000h
lupi:	
	call 	kb
	cmp 	al, "$"
	je		calc
	sub 	al,48
	add		dl,al
	jmp 	lupi

calc:
	
	
	mov     ax, 0000h
	mov     bx, 0000h
	mov     cx, 0000h
	mov     al, dl
	;mov	al,25d
	mov bx,5d
	mov cl,bl
	div cl

	mov cx, 0000h
	mov cl,al

	
	mov 	dx, msg
	cmp 	cl,1d
	je		mostrar

	mov 	dx, msg2
	cmp 	cl,2d
	je		mostrar

	mov 	dx, msg3
	cmp 	cl,3d
	je		mostrar

	mov 	dx, msg4
	cmp 	cl,4d
	je		mostrar

	mov 	dx, msg5
	cmp 	cl,5d
	je		mostrar

	mov 	dx, msg6
	cmp 	cl,6d
	je		mostrar

	mov 	dx, msg7
	cmp 	cl,7d
	je		mostrar

	mov 	dx, msg8
	cmp 	cl,8d
	je		mostrar

	mov 	dx, msg9
	cmp 	cl,9d
	je		mostrar

	mov 	dx, msg10
	cmp 	cl,10d
	je		mostrar


w_strng:
	mov	ah, 09h
	int 	21h
	ret

texto:	
	mov 	ah, 00h
	mov		al, 03h
	int 	10h
	ret

mostrar:
	call	w_strng
	int		20h

	
kb: mov	ah, 1h
	int 	21h
	ret

section .data
msg_pr	db 	"Ingresar la suma de los ultimos 5 digitos de su carnet:  $"
msg		db 	"Solo necesito el 0 $"
msg2	db 	"Aun se pasa $"
msg3	db 	"Hay salud $"
msg4	db 	 "Me recupero $"
msg5	db 	"En el segundo $"
msg6	db 	"Peor es nada $"  
msg7	db 	"Muy bien $"
msg8	db 	"Colocho $"
msg9	db 	"Siempre me esfuerzo $"
msg10	db 	"Perfecto solo Dios $"
