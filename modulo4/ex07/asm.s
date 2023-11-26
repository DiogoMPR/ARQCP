.section .data
	
.section .text

.global count_even				# int count_even(short*vec,int n)


count_even:
	#prologue
	pushq 	%rbp			# save the base pointer
	movq	%rsp, %rbp		# set the base pointer to the stack pointer
	
	
	movl %esi, %ecx			# ecx = n 
	movq %rdi, %r8			# r8 = vec
	movq $0, %r9			# r9 = 0, will be used as a counter
	movb $2, %r10b			# r10 = 2, will be used to check if the number is odd
	
loop:
	cmpl $0, %ecx			# if (n == 0) 
	je end					# go to end
	
	movq $0, %rdx			
	movq $0, %rax			# clean dividend
	movsbl (%r8), %eax			# eax = vec[i]
	
	cdq
	
	idivw %r10w			    # eax = eax / 2
	
	incq %r8				# r8 = r8 + 1 (vec++)
	decl %ecx				# ecx = ecx - 1 (n--)
	
	cmpl $0, %edx			# if (eax % 2 == 0) it's not odd
	je more					# jumps to the beggining of the loop
	jmp loop	
	
more:
	incq %r9				# r9 = r9 + 1 (counter++)
	jmp loop


end:	
	movq %r9, %rax			# rax = r9 (counter)
	#epilogue
	movq 	%rbp, %rsp      # restore the stack pointer
	popq	%rbp			# restore the base pointer
	ret						# return to the caller
