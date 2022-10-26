.globl main

.text

count_bits:
	mv t0,a0	#n
	li a0,0	#contador
	beqz t0,L	#se zero,sai logo
L1:	andi t1,t0,1	#obtem bit da direita
	add a0,a0,t1	#soma bit da direita
	srli t0,t0,1	#desloca numero 1 bit para a direita
	bnez t0,L1
L:	ret


main:	li a0,0x5
	jal count_bits