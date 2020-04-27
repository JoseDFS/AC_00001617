;---------------Ejercicio 1-------------------------
	org	100h
	 
	mov	ax,0d
	mov 	ax,1d
	add 	ax,6d
	add 	ax,1d
	add 	ax,7d
	mov 	bx,5d
	div 	bx

	cmp 	ax,3d
	je 	lupi

lupi: 	mov	cl,"H"
	mov	[200h],cl
	mov	cl,"a"
	mov	[201h],cl
	mov	cl,"y"
	mov	[202h],cl
	mov	cl,""
	mov	[203h],cl
	mov	cl,"s"
	mov	[204h],cl
	mov	cl,"a"
	mov	[205h],cl
	mov	cl,"l"
	mov	[206h],cl
	mov	cl,"u"
	mov	[207h],cl
	mov	cl,"d"
	mov	[208h],cl

;---------------Ejercicio 2 -----------------------------------
    	mov 	si, 0d
        mov 	ax, 2d
        mov 	cx, 2d
celda1:  mul 	cx
        mov 	[si+210h], ax
        inc 	si
        cmp 	ax, 256d
        jb 	flag1

celda2:  mul 	cx
        inc 	si
        mov 	[si+210h], ax
        inc 	si
        cmp 	si, 14d 
        jb 	flag2
        

;---------------Ejercicio 3------------------------------------
	
	mov	bx, 0d
	mov	dx, 1d
	mov	cx, 13d
	mov 	di, 0d

        mov 	[220h], bx
        inc 	di
        mov 	[di+220h], dx
        inc 	di
lupita:	mov	ax, bx
	add	ax, dx
        mov 	[di+220h], ax
        inc 	di
	mov	bx, dx
	mov	dx, ax

	Loop 	lupita

	int	20h