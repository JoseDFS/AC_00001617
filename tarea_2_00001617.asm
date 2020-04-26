;---------------Ejercicio 1
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

;---------------Ejercicio 2
	mov 	ax,0d
	mov 	bx,1d
	mov	cx,14d
	

	int 	20h