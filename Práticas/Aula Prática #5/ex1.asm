# x->t0
# y->t1


#a)
bge t1,t0,L
addi t0,t0,-1
L:

#b)
bgez t0,L1
sub t1,zero,t0
beq zero,zero,End

L1:add t1,t0,zero

End:

#c)
li t2,10
li t0,1
li t1,0

For:	blt t2,t0,L
	add t1,t1,t0
	addi t0,t0,1
	beq zero,zero,For
	
L:

#d)

addi t0,zero,1
bne t0,t2,case2
addi t1,zero,10
beq zero,zero,end

case2:	addi t2,zero,2
	bne t0,t2,default
	addi t1,zero,15
	beq zero,zero,end

default:addi t1,zero,0
end:




