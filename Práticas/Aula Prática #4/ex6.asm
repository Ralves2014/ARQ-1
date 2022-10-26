.globl main
.text

IPv:	srli a0,t0,8
	srli a1,t1,8
	beq t0,t1,L
	li t2,0
	ret
	

L:	li t2,1
	ret

main:	li t0,0x12345678
	li t1,0x12345678
	jal IPv
