org 	100h

section .text

	call 	grafico	; Llamada a iniciar modo grafico 13h

	xor 	si, si
	xor 	di, di

	mov 	si, 100d ; X -> Columna
	mov 	di, 50d ; Y -> Fila
	call 	linea_h_1

	mov 	si, 100d ; X -> Columna
	mov 	di, 150d ; Y -> Fila
	call 	linea_h_1

	mov		si, 100d ; X -> Columna
	mov 	di, 50d ; Y -> Fila
	call 	linea_v_1

	mov		si, 175d ; X -> Columna
	mov 	di, 50d ; Y -> Fila
	call 	linea_v_1

	mov		si, 115d ; X -> Columna
	mov 	di, 65d ; Y -> Fila
	call 	linea_h_2

	mov		si, 115d ; X -> Columna
	mov 	di, 135d ; Y -> Fila
	call 	linea_h_2


	mov		si, 190d ; X -> Columna
	mov 	di, 65d ; Y -> Fila
	call 	linea_v_2

	mov		si, 115d ; X -> Columna
	mov 	di, 65d ; Y -> Fila
	call 	linea_v_2

	call 	kb		; Utilizamos espera de alguna tecla

	int 	20h

grafico:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	mov	ah, 0Ch
	mov	al, 1010b
	int 	10h
	ret

linea_h_1: 
lupi_h_1:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 175d
	jne 	lupi_h_1
	ret

linea_h_2: 
lupi_h_2:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 190d
	jne 	lupi_h_2
	ret

linea_h_3: 
lupi_h_3:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov		dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 190d
	jne 	lupi_h_3
	ret

linea_v_1:
lupi_v_1:	mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 150d
	jne 	lupi_v_1
	ret

linea_v_2:
lupi_v_2:	mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 135d
	jne 	lupi_v_2
	ret



kb: 	mov	ah, 00h
	int 	16h
	ret

section .data