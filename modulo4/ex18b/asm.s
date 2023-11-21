.section .data

.section .text
	
	.global changes # defines changes(int *ptr) as globas, with *ptr in (%rdi)
	
changes:

	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp			# allocate 8 bytes on the stack.
	
	movl	(%rdi), %ecx		# copies the value in rdi to ecx (*ptr).
	andl $0xF000, %ecx # *ptr & 0xF000
	movl %ecx, -8(%rbp) # saves *ptr & 0xFF00 on the local variable - byteChecker.
	shrl	$8, -8(%rbp)		# byteChecker >> 8.
	cmpl	$15, -8(%rbp)		# compare byteChecker with 15.
	jg change_byte # jumps to 'change_byte' if the condition is matched
	jmp end # jumps inconditionally to end
	
change_byte:
	xorl	$0xFF0000, (%rdi)	# *ptr = *ptr ^ 0xFF0000.
	
end:
	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	
	ret
