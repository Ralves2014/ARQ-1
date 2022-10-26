.globl main

.data
array:	.word 1,5,3,10

.text

soma_array:	li t1,0
		beqz zero,loop	

loop:		lw t0, 0(a0)
		beqz t0,End
		add t1,t1,t0
		addi a0,a0,4
		beqz zero,loop

End:	mv a0,t1
	ret
		



main:	la a0,array
	jal soma_array