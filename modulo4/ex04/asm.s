.section .data

.section .text

	.global sum_sub # defines 'sum_sub' as global
	
sum_sub: 
	# num1 in edi, num2 in esi, *ptrsub in edx
	
	# prologue
	pushq %rbp
	movq %rsp, %rbp
	
	movl %edi, %eax # place num1 in eax
	addl %esi, %eax # adds num2 to num1, the result is stored in eax
	
	movl %edi, (%rdx) # place num1 in rdx
	subl %esi, (%rdx) # subtracts num2 to num1, the result is stored in rdx

	#epilogue
	movq %rbp, %rsp
	popq %rbp
	
	ret
