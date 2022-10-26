.globl main

.data
array:	.word 1,5,30,10

.text

array_max:	lw t1, 0(a0)
		beqz t0,loop
		
loop:		addi a0,a0,4
		lw t0, 0(a0)
		beqz t0,End
		blt t0,t1,loop
		mv t1,t0
		beqz zero,loop
		
End:	mv a0,t1
	ret
		
main:	la a0,array
	jal array_max