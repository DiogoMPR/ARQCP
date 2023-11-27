.section .text
	.global changes # defines changes(int *ptr) as globas, with *ptr in (%rdi)
	.global changes_vec # defines changes_vec(int *ptrvc, int num) as global, with *ptrvec in (%rdi) and num in %esi
	
changes_vec:
	
	xorl %edx, %edx # Intialize the counter in ecx with 0
	
	cmpl $0,%esi # verifies if num (esi) is null
	
	je end1 # # jumps to 'end1' if the condition is matched
	
	jmp loop # jumps inconditionally to 'loop'
	
loop:
	call	changes				#calls function changes with *ptrvec as a parameter
	
	addl	$1, %edx			# increments the counter
	
	cmpl %edx, %esi # compares the counter with the num
	
	je end1  # jumps to 'end1' if the condition is matched
	
	addq $4, %rdi # Moves the ptr to the next value 
	
	jmp loop # jumps inconditionally to 'loop'
	
end1:
	
	ret
	
changes:
	# prologue
	pushq %r8
	pushq %rsi
	pushq %rdx
	
	movl (%rdi), %r8d # Place the value pointed by ptr in r8d
	
	shrl $24, %r8d # shift the value in r8d 24 bits to the right
	
	cmpl $15, %r8d # compares the value in r8d with 15
	
	jle end # jumps to 'end' if the condition is matched
	
	xorl	$0x00FF0000, (%rdi)	# *ptr = *ptr ^ 0x00FF0000.
	
	# epilogue
	popq %rcx
	popq %rsi
	popq %r9
	ret
	
end:

	#epilogue
	
	popq %rdx
	popq %rsi
	popq %r9
	
	ret
