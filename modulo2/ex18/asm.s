.section .data
	.global n				# define n as global
	.equ A, 3				# defines A as a constant with the value 3
	.equ B, 4				# defines B as a constant with the value 4

.section .text
	.global sigma 	        # defines sigma as global
	
sigma:

	movl n(%rip), %ecx		# place n in ecx
	cmpl $0, %ecx			# compares the value in ecx with 0
	jle nIsZero			    # jumps if the the value of n is equal or lower then the 0
	movl $1, %edx			# place 1 in edx
	movl $A, %eax			# place A in eax
	cqto					
	movl $B, %ecx			# place B in ecx
	movl $0, %esp			# place 0 in esp
	jmp iteration			#jumps to iteration condition

loop:
	imull $A,%eax 					# multiplies the value in eax for A (A * A)
	imull $A,%eax 					# multiplies the value in eax for A (A²)*A
	idivl %ecx 						# divides the result in eax by ecx (A³)/B


	imull %edx 						# multiplies the result in ecx by the on in edx (A³)/B * i
	imull %edx  					# multiplies the result in ecx by the on in edx ((A³)/B * i) * i

	addl %eax, %esp 				# adds eax to esp, moving the result to esp

	movl $A, %eax 					# place A in eax
	incl %edx						# increments the value stored in edx by one
	
iteration:
	cmpl %ecx, %edx				# compares the value in ecx with the one in edx
	jle loop						#if n <= i, jumps to 'end'
	jg end							#else jumps to 'end'
	ret

end:
	movl %esp, %eax					# places the value in esp to eax
	ret

nIsZero:
	movl $0, %eax					# places 0 in eax
	ret
	
