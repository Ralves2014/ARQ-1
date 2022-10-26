#escrever os numeros ate 32 bits 1,2,3,4 em memoria a partir
#do endereço 0x10010020

lui t2,0x10010
addi t2,t2,0x020

addi t0,zero,1
sw t0, 0(t2)

addi t0,zero,2
sw t0, 4(t2)

addi t0,zero,3
sw t0, 8(t2)

addi t0,zero,4
sw t0, 12(t2)