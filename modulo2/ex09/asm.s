.section .data
	.global C
	.global A
	.global D
	.global B
	
.section .text
.global sum_and_subtract 

sum_and_subtract:
    
    # Load 16-bit value C into RAX
    movw C(%rip), %ax
    movswq %ax, %rax
    
    # Load 32-bit value A into RCX
    movl A(%rip), %ecx
    movslq %ecx, %rcx
    
    # Load 16-bit value D into RDX
    movw D(%rip), %dx
    movswq %dx, %rdx
    
    # Load 8-bit value B into R8
    movb B(%rip), %r8b
    movsbq %r8b, %r8

    # Subtract A multiplied by C from RAX
    subq %rcx, %rax
    # Add D to RAX
    addq %rdx, %rax
    # Subtract B from RAX
    subq %r8, %rax
    
    ret
