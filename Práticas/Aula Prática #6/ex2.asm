li a0,1	#addi a1,zero,1
li a1,-2	#addi a1,zero,-2
li a2,3	#addi a1,zero,3

bge a0,a1,max2
add a0,zero,a1

max2:	bge a0,a2,End
	add a0,zero,a2

End: