.globl main

.text

#if (n==0) return 0;
#else return (n&1)+count_bits(n>>1)


count_bitsr:
		addi sp,sp,-8
		sw ra,4(sp)
		sw s0,0(sp)
		
		mv s0,a0		#n
		li a0,0		#contador
		beqz s0,L2		#se zero,sai logo
		srli a0,s0,1		#n>>1
		jal count_bitsr	#count_bitsr(n>>1)
		andi s0,s0,1		#n & 1
		add a0,s0,a0
		
		
	L2:	lw s0,0(sp)
		lw ra,4(sp)
		addi sp,sp,8
		ret

main:
	li a0,0xaf3
	jal count_bitsr
	mv t0,a0