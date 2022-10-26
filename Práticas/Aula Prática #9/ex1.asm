.globl main

.text

logintn:	li t0,0	#contador
		li t1,1
		
		
loop:	srli a0,a0,1
	blt a0,t1,End
	addi t0,t0,1
	j loop

End:	mv a0,t0
	ret
	
	
main:	li a0,15
	jal logintn
	
