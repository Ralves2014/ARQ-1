.globl main

.text

#int strlen_rec(char *s)

	#if(*s=='\0')return 0;
	#else 1+strlen(s+1)
	



strlen_rec:
		addi sp,sp,-4
		sw ra,0(sp)
		
		mv t0,a0	#endereço
		li a0,0		#comprimento da string
		lbu t1,0(t0)	#t1=char,t0=endereço do char
		beqz t1,L3	#se nulo
		addi a0,t0,1
		jal strlen_rec
		addi a0,a0,1
	
	
L3:	lw ra,0(sp)
	addi sp,sp,4
	ret
	
	
main:
	la a0,A
	jal strlen_rec
	mv t0,a0
	
	