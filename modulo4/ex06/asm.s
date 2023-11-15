.section .data

.section .text

	.global test_different # defines 'test_different' as global

test_different:
	
	#prologue
	
	pushq %rbp
	movq %rsp, %rbp
	
loop:
	
	movb (%rdi), %r8b # copies the value in rdi to r8b (*a)
	movb (%rsi), %r9b # copies the value in rsi to r9b (*b)
	
	cmpb $0, %r8b # compares the value in r8b with 0
	je test_end # if the condition is matched, jumps to 'test_end'
	
	cmpb %r8b, %r9b # compares the values in r8b and r9b
	jne different # if the values are not the same, jumps to 'different'
	incq %rdi # increments rdi by one, pointing to the next element
	incq %rsi # increments rsi by one, pointing to the next element
	jmp loop # jump inconditionally to 'loop'
	

test_end:
	
	cmpb $0, %r9b # checks if the value in r9b is equal to 0
	je equal # if the condition is matched, jumps to 'equal'
	jmp different # jump inconditionally to 'different'
	
different:

	movq $1, %rax # place 0 in rax
	jmp end
	
equal:
	
	movq $0, %rax # place 1 in rax
	
end:
	
	#epilogue
	
	movq %rbp, %rsp
	popq %rbp
	
	ret
