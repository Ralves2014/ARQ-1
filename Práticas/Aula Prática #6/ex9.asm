li t0,32
li t1,1
li a0,15
add a3,zero,a0


For:	blt t0,t1,End
	andi t2,a0,1
	beqz t2,next
	addi a1,a1,1
next:	srl a0,a3,t1
	addi t1,t1,1
	beqz zero,For

End: