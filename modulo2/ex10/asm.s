# The function should perform the following operation: op1 + op2 + op3 (all 32-bit values declared in C). The function should return a 64-bit value that must
# be printed in C.

.section .data
# declares op1, op2 and op3 as global functions

	.global op1, op2, op3
		
.section .text
	.global sum3ints
	
sum3ints:

	movslq op1(%rip), %rax # place the value of op1 in RAX
	movslq op2(%rip), %rcx # place the value of op2 in RCX
	
	addq %rax, %rcx # adds the value in RAX to the one in RCX -> the result is in RCX (op1 + op2)
	
	movslq op3(%rip), %rax # place the value of op3 in RAX
	
	addq %rcx, %rax # adds the value in RCX to the one in RAX -> the result is in RAX (op1 + op2) + op3
	
	ret
