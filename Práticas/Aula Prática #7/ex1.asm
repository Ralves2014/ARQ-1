.data
HELLO:    .string "hello world"

.text
    	la t0, HELLO
    	li t2,0x61
    	li t3, 0x7a

CICLO: lbu t1, 0(t0)
	beq t1, zero, END
    	blt t1, t2, ADD
    	bgt t1, t3, ADD
    	addi t1, t1, -0x20
    	sb t1, 0(t0)
    
    
ADD:   addi t0, t0, 1
    	bne t1, zero, CICLO

END:   la a0, HELLO
    	li a7, 4
    	ecall
    	
    	


	
	
	
	
