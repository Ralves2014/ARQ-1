.globl main

.data 
str:	.string "adeus"

.text


strlen:li t0,0
	

loop:	lbu a1, 0(a0)
	beqz a1,END
	addi t0,t0,1
	addi a0,a0,1
	beqz zero,loop

END:	mv a0,t0
	ret

main:	la a0,str
	jal strlen
