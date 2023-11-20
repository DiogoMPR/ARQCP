.section .data

.section .text

	.global calc # defines 'calc' as global
	
calc:

	# prologue
	
	pushq %rbp
	movq %rbp, %rsp 
	subq $8, %rsp # allocates 8 bytes in the stack for the local variable z
	
	imull $4, %edi # multiplies edi by 4 (a * 4)
	addl (%rsi), %edi # adds the value in edi to rsi (a * 4) + (*b)
	movl %edi, -8(%rbp) # place the value in edi to the local variable z
	
	subl $6, %edx # subtracts 6 to the value in edx (c-6)
	movl %edx, %eax # copies the value in edx to eax
	imull -8(%rbp) # multiplies eax by z
	
end:

	# epilogue
	
	movq %rbp, %rsp
	pop %rbp
	
	ret
