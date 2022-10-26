.globl main

.text

abs:	blt zero,a0,P
	sub a0,zero,a0
	
P:	ret


main:	li a0,-10
	jal abs