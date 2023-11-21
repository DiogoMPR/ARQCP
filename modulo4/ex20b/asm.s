.section .data
	
.section .text
	
 .global sum_multiples_x				# int sum_multiples_x(char *vec, int x) with *vec in %edi and x in %esi
				
sum_multiples_x:
	#prologue
	pushq 	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp			# allocate 16 bytes on the stack for the local variables sum and multiple.
	
	movl	$0, -8(%rbp)		# sum = 0
	movl	%esi, %ecx			# save the value of x
	andl	$0xFF0000, %ecx		# x & thirdByteMask
	movl	%ecx, -16(%rbp)		# multiple = x & thirdByteMask
	sarl	$16,	-16(%rbp)	# multiple >> 16
	cmpl	$0, -16(%rbp)		# compare multiple with 0
	je		end					# jump to end if multiple = 0
	
loop:
	cmpb	$0, (%rdi)			# compare *vec with '\0'
	je		end					# jump to end if equals to the zero byte
	movsbl	(%rdi), %eax		# save the value of *vec
	cltd						# sign extend
	idivl	-16(%rbp)			# *vec/multiple
	cmpl	$0, %edx			# check if the remainder is 0
	je		multiple			# jump to multiple if *vec % multiple = 0
	incq	%rdi				# *vec++
	jmp 	loop				# jump unconditionally to loop
	
multiple:
	movsbl	(%rdi), %r9d		# save the value of *vec
	addl	%r9d, -8(%rbp)		# sum += *vec
	incq	%rdi				# *vec++
	jmp		loop				# jump unconditionally to loop
	
end:
	movl 	-8(%rbp), %eax		# return sum
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	ret
