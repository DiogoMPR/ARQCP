.section .data
	
.section .text
	.global test_even # defines 'test_even' as global
	.global vec_sum_even # defines 'vec sum' as global
	
test_even:
	
	movl $2, %ecx # place 2 in ecx
	movl %edi, %eax # place address of the number in eax
	
	cdq # sign extension
	idivl %ecx # divides the value in eax by the one in ecx (quotient in eax, remainder in edx)
	
	cmpl $0, %edx # compares the remainder of the division with 0
	je even # if the 0 is in edx, jumps to 'even' condition
	
	jmp not_even # jumps unconditionally to 'not even' condition
	
even:

	movl $1, %eax # place 1 in eax
	ret

not_even:
	movl $0, %eax # place 0 in eax
	ret
	
vec_sum_even:

	movl $0, %r8d # place 0 in r8d
	
loop:
	movl (%rdi), %r9d # place ptr in r9d
	
	cmpl $0, %esi # compare 0 with esi (number)
	je end # if the condition is matched, jumps to 'end'
	
	movl $2, %ecx # place 2 in ecx
	movl (%rdi), %eax # copies the value in rdi to eax
	
	cdq # sign extension
	idivl %ecx # divide eax by ecx (quotient in eax, remainder in edx)
	
	cmpl $0, %edx # compare remainder to 0
	je sum # if the condition is matched, jumps to 'sum'
	
	addq $4, %rdi # adds 4 to rdi
	decl %esi # decrease esi to go to the next position
	jmp loop # jumps to 'loop'
	
sum:
	addl (%rdi), %r8d # adds the value in r8d to the on in rdi, the result is stored in r8d
	addq $4, %rdi # adds 4 to the result in rdi
	decl %esi # decrease esi to go to the next position
	
	jmp loop # jumps to 'loop'
	
end:
	movl %r8d, %eax # place the value in r8d in eax
	ret
	


