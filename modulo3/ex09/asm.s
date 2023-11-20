.section .data
	
.section .text
	.global vec_search # vec_search is the function name

vec_search:
	leaq (%rdi), %r8 # move %rdi into %r8
	movl $0, %r9d # move 0 into %r9d

array_loop:
	cmpl %r9d, %esi # compare r9d with esi
	je end_loop # if equal, jump to end_loop
	movl (%r8), %ecx # load the value pointed by %r8 into %ecx
	cmpl %ecx, %edx # compare %ecx with %edx
	je found # if equal, jump to found
	addq $4, %r8 # increment %r8 by 4
	incl %r9d # increment %r9d by 1
	jmp array_loop # jump to array_loop

found:
	leaq (%r8), %rax # move %r8 into %rax
	ret # return

end_loop:
	xorq %rax, %rax # set %rax to 0
	ret # return
