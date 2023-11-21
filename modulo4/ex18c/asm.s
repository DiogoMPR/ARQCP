.section .data

.section .text
	
	.global changes # defines changes(int *ptr) as globas, with *ptr in (%rdi)
	.global changes_vec # defines changes_vec(int *ptrvc, int num) as global, with *ptrvec in (%rdi) and num in %esi
	
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
	
changes_vec:

	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	
loop:
	cmpl	$0, %esi			#compare num with 0
	je		end1				#jump to end if num = 0
	call	changes				#calls function changes with *ptrvec as a parameter
	addq	$4, %rdi			#*ptrvec++
	decl	%esi				#num--
	jmp 	loop
	
end1:	
		#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
