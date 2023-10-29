.section .data
	.global A 
	.global B
	.global C
	.global D

.section .text
.global compute 

compute:
    movslq A(%rip), %rax     # Move o valor de A para %rax (64 bits)
    imulq B(%rip), %rax      # Multiplica A por B e armazena em %rax
    movslq C(%rip), %rcx     # Move o valor de C para %rcx (64 bits)
    imulq A(%rip), %rcx      # Multiplica C por A e armazena em %rcx
    subq %rcx, %rax          # Subtrai o valor de %rcx (C * A) de %rax
    movslq D(%rip), %rcx     # Move o valor de D para %rcx (64 bits)
    idivq %rcx               # Divide o valor de %rax pelo valor de %rcx (D)
    ret

