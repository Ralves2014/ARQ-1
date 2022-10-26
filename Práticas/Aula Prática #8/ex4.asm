.globl main

.text

max:	blt a1,a0,End
	mv a0,a1
	

	
max3:	blt a2,a0,End
	mv a0,a2

End:	ret


main:
	li a0, 3
	li a1, 5
	jal max
	li a2, 20
	jal max3 # maximo de 3 numeros
	mv t0,a0