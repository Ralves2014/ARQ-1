.globl main


potencia:	andi a0,t0,1
		beqz a0,L
		li t2,0
		ret
		
L:	li t2,1
	ret



main:	li t0,120
	jal potencia