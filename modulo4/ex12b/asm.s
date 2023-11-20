.section .data

.section .text

	.global count_bits_zero # define 'count_bits_zero' as global
	
count_bits_zero:
	
	# prologue
	pushq %rbp
	movq %rsp, %rbp
	
	movq $0, %rax # initialize counter as 0 in rax register
	movq $64, %rcx # i=64, with i being the loop variable placed in rcx register
	
loop:

	cmpq $0, %rcx # compare i with 0
	je end # if the condition is matched (i=0), jumps to end
	
	pushq %rdi # place x into the stack
	ANDq $1, %rdi # apply AND operation to x
	cmpq $0, %rdi # verifies if the bit is 0
	je increment # jumps to increment if the condition is matched
	popq %rdi # restores the x initial value
	sar %rdi # Shift to the right with signal preservation
	
	decq %rcx # decrements rcx by one (i--)
	jmp loop # jumps inconditionally to loop
	
increment:

	popq %rdi # restores the x initial value
	incq %rax # increments the counter
	sar %rdi # Shift to the right with signal preservation
	decq %rcx # decrements i (i--)
	jmp loop # jumps inconditionally to loop
	
end:
	
	# epilogue
	
	movq %rbp, %rsp
	popq %rbp
	
	ret
