.section .data
	.global op1 # declares op1 as global
	.global op2 # declares op2 as global
	# define op3 and op4 as globals	
	.global op3
	op3:
		.quad 3
	.global op4
	op4:
		.quad 4
	
.section .text
	.global yet_another_sum # long yet_another_sum(void)

yet_another_sum:
#  perform the following operation: op4 + op3 - op2 - op2 + op1 - op4
	movq op3(%rip), %rax # place op3 in rax
	movq op4(%rip), %rcx # place op4 in rcx
	
	addq %rcx, %rax # adds rbx to rax and stores the value in rax op4 + op3
	
	movslq op2(%rip), %rdx # place op2 in rdx 
	
	subq %rdx, %rax # subtracts rcx to rax and stores the value in rax (op4 + op3) - op2
	subq %rdx, %rax # subtracts rcx to rax and stores the value in rax (op4 + op3 - op2) - op2
	
	movslq op1(%rip), %rdx # place op1 in rdx and changes the size from long to quad
	
	addq %rdx, %rax #adds rcx to rax and stores the value in rax (op4 + op3 - op2 - op2) + op1
	subq %rcx, %rax # substracts the value in rbx to the one in rax and stores it in rax (op4 + op3 - op2 - op2 + op1) - op4
	
	ret
