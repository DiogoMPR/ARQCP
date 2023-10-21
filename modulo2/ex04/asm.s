.section .data
	.global op1 # define op1 as global
	op1: .long 0
	.global op2 # define op2 as global
	op2: .long 0
	.global CONST # define CONST as global
	CONST: .long 20 # define that the CONST variable is a long variable and attributes the value 20
	.global op3
	op3: .quad 0
	.global op4
	op4: .quad 0
	
.section .text
	.global sum # int sum(void)
	.global another_sum # long another_sum(void)
	.global yet_another_sum # long yet_another_sum(void)
	
sum:
	movl op1(%rip), %ecx # place op1 in ecx
	movl op2(%rip), %eax # place op2 in eax
	addl %ecx, %eax # add ecx to eax. Result is in eax
ret

another_sum:
 # performs the following operation: (CONST - op1) + (CONST - op2) + CONST
	movl op1(%rip), %eax # place op1 into eax
	movl op2(%rip), %ecx #place op2 into ecx
	movl CONST(%rip), %edx # place CONST in edx
	movl %edx, %ebx # place the value in edx into ebx
	movl %ebx, %esi # place the value in ebx into esi
	subl %eax, %edx # subtract the value in EDX to the current value in EDX (CONST - op1)
	subl %ecx, %ebx # subtract the value in ECX to the current value in EBX (CONST - op2)
	addl %ebx, %edx # add the values in EBX and in EDX (CONST - op1) + (CONST - op2)
	addl %esi, %edx # add the values in ESI and in EDX (CONST - op1) + (CONST - op2) + CONST
	movl %edx, %eax # place the value in EDX into EAX
ret

yet_another_sum:
#  perform the following operation: op4 + op3 - op2 - op2 + op1 - op4
	movq op1(%rip), %rax # place op1 into rax
	movq op2(%rip), %rcx # place op2 into rcx
	movq op3(%rip), %rdx # place op3 into rdx
	movq op4(%rip), %rbx # place op4 into rbx
	movq %rbx, %rsp # copies the value from RBX to RSP
	addq %rbx, %rdx # adds the values in RBX and RDX and stores it in RDX (op4 + op3)
	subq %rcx, %rdx # substracts the value in RCX to the value in RDX ((op4 + op3) - op2)
	subq %rcx, %rdx # substracts the value in RCX to the value in RDX ((op4 + op3 - op2) - op2)
	addq %rax, %rdx # adds the values in RAX and RDX and stores it in RDX ((op4 + op3 - op2 - op2) + op1)
	subq %rsp, %rdx # substracts the value in RSP to the value in RDX ((op4 + op3 - op2 - op2 + op1) - op4)
	movq %rdx, %rax # copies the value in RDX to RAX
	ret
