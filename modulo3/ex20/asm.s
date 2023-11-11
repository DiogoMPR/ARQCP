.section .data

.section .text
	.global count_max # defines 'count_max' as global
	
count_max:
	movl $0, %eax # place 0 in eax
	subl $2, %esi # subtract 2 from esi (num - size of the array)

loop:
	cmpl $0, %esi # compares the value in esi with 0 
	jle end # jumps to 'end' if the condition is matched
	movl (%rdi), %edx # copies the value pointed by ptr (rdi) to edx
	addq $4, %rdi # increments rdi by four, in order to make ptr point the next int
	movl (%rdi), %r8d # copies the value pointed by ptr (rdi) to r8d
	cmpl %edx, %r8d # compares the values stored in ecx and in r8d
	jg check # if the value in r8d is lower than the one in ecx, jumps to 'check'
	decl %esi # decrement esi by 1
	jmp loop # jumps inconditionally to loop
	
check: 
	addq $4, %rdi # increment ptr by 4 in order to point to the next int
	movl (%rdi), %r9d # copies the value pointed by ptr in r9d
	cmpl %r8d, %r9d # compares the value in r8d with the one in r9d
	jl sum # if the value in r8d is lower than the one in r9d, jumps to 'sum'
	subq $4, %rdi # decrement ptr by 4, in order to point to the previous element
	decl %esi # decrement esi by 1
	jmp loop # jumps inconditionally to loop
	
sum:
	incl %eax # increments eax by 1
	subq $4, %rdi # decrement ptr by 4, in order to make it point to the previous int
	decl %esi # decrement esi by 1
	jmp loop # jumps inconditionally to loop
	
end:
	ret
