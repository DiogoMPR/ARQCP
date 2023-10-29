.section .data
	.global op1 
	.global op2

.section .text
.global verify_flags 

verify_flags:

	movw op1(%rip), %cx
	movw op2(%rip), %dx

	addw %cx, %ax

	ret

