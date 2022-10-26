##############
.globl main
.text



Collatz:	andi a1,a0,1
		beq a1,zero,Par
		slli a2,a0,1
		add a2,a2,a0
		addi a2,a2,1
		add a0,zero,a2
		ret

Par:	srli a0,a0,1
	ret


main:	li a0,2
	jal ra,Collatz
	mv t0,a0
	
##############



		
