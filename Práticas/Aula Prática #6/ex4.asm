li a0,1
li a1,4

For:	blt a1,a0,L
	andi t1,a0,1
	bnez t1,R
	add t0,t0,a0
R:	addi a0,a0,1
	beq zero,zero,For
	

L: mv a0,t0
