.section .data

.section .text
	.global swap # defines 'swap' as global
	
swap:
	cmpl $0, %edx # compares the value in edx with 0, in other words, the arrays are empty
	je end # if edx is 0, jumps to end
	movl $0, %ecx # place 0 in ecx
	movb (%rdi), %r8b # copies the value in rdi to r8b (value pointed by ptr1)
	movb (%rsi), %r9b # copies the value in rsi to r9b (value pointed by ptr2)
	movb %r8b, (%rsi) # copies the value in r8b to rsi
	movb %r9b, (%rdi) # copies the value in r9b to rsi
	decl %edx # decrement edx by one
	incq %rdi # increment rdi by one in order to ptr1 to point the next element
	incq %rsi # increment rsi by one in order to ptr2 to point the next element
	jmp swap
	
end:
	ret
