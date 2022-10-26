.globl main
.data 
array:	.word 1,4,5,-2

.text

maior:	li t2,4
	lw t0,0(a0)
I:	addi a0,a0,1
	blt a0,t2,End
	lw t1,0(a0)
	bge t0,t1,I
	add t0,zero,t1
	beq zero,zero,I
	
End:	ret


main:
	la a0,array
	jal maior
