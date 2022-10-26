.globl main

.text

max:	blt a1,a0,End
	mv a0,a1

End:	ret

main:	li a0,10
	li a1,2
	jal max