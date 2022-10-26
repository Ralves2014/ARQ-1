.globl main
.text

simetrico:	add a2,a2,a0
		srli a0,a0,31
		andi a1,a0,1
		beqz a1,L
		sub a0,zero,a2
		
L:		ret
		

main:	li a0,-2
	jal simetrico
	mv t1,a0
	

		