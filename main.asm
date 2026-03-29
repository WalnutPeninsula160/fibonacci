section	.text
global	_start

; loop should be aligned to 16 bytes
ALIGN	0x10
_printhex:
	push	rbp
	mov	rbp,	rsp
	sub	sub	rsp,	0x10
	mov	cl,	0x4
	mov	bl,	0x10
J0:
	shld	rdi,	rax,	cl
	;
	inc	rsp
	dec	bl
	cmp	bl,	0x0
	jnz	J0
	;
	mov	rbp,	rsp
	pop	rbp
	ret
