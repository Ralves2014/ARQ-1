########
#1 hipotese
.globl main
.text


T:	bnez t0,L
	li t2,1
	ret

L:	li t2,0
	ret
	

main:	li t0,0
	jal T


########
#2 hipotese

li t0,0
sltiu t2,t0,1