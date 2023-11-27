#Implement the function long d_square(int x) that returns the double of the square (2 ∗ x2) of the integer number ’x’ passed as a parameter

.section .data
	
.section .text

.global d_square				# long cube(int x)


d_square:
	
	pushq 	%rbp			# save the base pointer
	movq	%rsp, %rbp		# set the base pointer to the stack pointer
	
	movslq 	%edi, %rax		# move the first argument into the rax
	imulq   %rax, %rax      # multiply rax by rax - argument*argument
	
	imulq   $2, %rax         # multiply the result by 2
		
end:	

	movq 	%rbp, %rsp      # restore the stack pointer
	popq	%rbp			# restore the base pointer
	
	ret						# return to the caller
