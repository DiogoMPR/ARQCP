.section .data

.section .text
	.global count_bits_zero # defines 'count_bits_zero' as global
	
count_bits_zero:
	
	# prologue
	pushq %rbp
	movq %rsp, %rbp
	
	movq $0, %rax # initialize counter as 0 in rax register
	movq $32, %rcx # i=32, with i being the loop variable placed in rcx register
	
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
	
.global vec_count_bits_zero # defines 'vec_count_bits_zero' as global

vec_count_bits_zero:

	# prologue
	pushq %rbp
	movq %rsp, %rbp
	
	movq $0, %rdx # place 0 in rdx (counter)
	
loop1:
	
	cmpq $0, %rsi # compare num with 0
	je end1 # jumps to end if the condition is matched
	pushq %rdi # place rdi in the stack
	movl (%rdi), %edi # make *ptr a parameter
	pushq %rax # place rax in the stack
	pushq %rdx # place rdx in the stack
	call count_bits_zero # calls the function
	popq %rdx # restores the rdx with the initial value 
	addq %rax, %rdx # counter += number of active bits
	popq %rax # restores the rax with the initial value 
	popq %rdi # restores the rdi with the initial value
	addq $4, %rdi # goes to the next int
	decq %rsi # num--
	jmp loop1 # jumps inconditionally to loop1
	
end1:

	movq %rdx, %rax # copies the value in rdx to rax (total of active bits)
	
	# epilogue
	movq %rbp, %rsp
	popq %rbp
	
	ret 















