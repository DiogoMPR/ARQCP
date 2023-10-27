.section .data
	.global C
	.global A
	.global D
	.global B
	
.section .text
.global sum_and_subtract 

sum_and_subtract:
	
	movw C(%rip), %ax 
	movswq %bx, %rax   
	   
	movl A(%rip), %ecx
	movslq %ecx, %rcx
	
	movw D(%rip), %dx
	movswq %dx, %rdx
	
	movb B(%rip), %r8b
	movsbq %r8b, %r8

	subq %rcx, %rax
	addq %rdx, %rax          
    subq %r8, %rax          
	
    ret
