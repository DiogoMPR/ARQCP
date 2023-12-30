.section .data
	
.section .text

	.global count_odd_matrix		# count_odd_matrix(short** m, int y, int k);
									#					%dil	%esi	%edx

.section .text

count_odd_matrix:
	# prologue
	pushq 	%rbp			# save the base pointer
	movq	%rsp, %rbp		# set the base pointer to the stack pointer
	
	#number of rows = esi 
	#number of columns = edx
	#matrix = edi
		
	movl $0, %eax		# eax = 0 initialize the counter of odd elements found
	movl %esi, %ecx		# ecx = esi = number of rows
	
	subq $8, %rdi		# rdi = rdi - 8
	
	
#loop through the rows
loop_rows:
	
	cmpl $0, %ecx		# if ecx = 0, then we are done
	je end				# jump to end
	decl %ecx			# ecx-- decrement ecx

	addq $8, %rdi		# rdi = rdi + 8	, move to the next row
	movq (%rdi), %r9	# r9 = *edi = matrix[i]
	
	movl %edx, %r8d		# r8d = edx = number of columns
	

loop_collumns:
	
	movl (%r9), %r10d	# r10d = *r9 = matrix[i][j]
	
	testl $1, %r10d		# test if the last bit is 1
	jz not_odd			# if it isn't', jump to odd_found

	incl %eax			# eax++ increment the counter of odd elements found

not_odd:	
	decl %r8d			# r8d-- decrement r8d
	jz loop_rows		# jump to the next row if r8d = 0
	
	
	addq $8, %r9		# r9 = r9 + 8 = matrix[i] + 1
	jmp loop_collumns	# jump to the next collumn

end:
	# epilogue
	
	movq 	%rbp, %rsp		    # restore the stack pointer
	popq	%rbp				# restore the base pointer
	ret							# return to the caller
