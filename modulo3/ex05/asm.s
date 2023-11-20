.section .data 

.section .text
	.global vec_sum # function name
	.global vec_avg # function name
	
vec_sum:
	movl $0, %eax # eax = 0
	movw %si, %r8w # r8w = num
	
loop:
	cmpw $0, %r8w # this compare is to see if the list ended
	jz end_loop # if it did, jump to end_loop

	movl (%rdi), %ecx # ecx = integer from ptr
	addl %ecx, %eax # eax = eax + ecx
	addq $4, %rdi # increase ptr to move to the next integer
	subw $1, %r8w # r8w = r8w - 1

	jmp loop # jump back to the beginning of the loop

end_loop:
	ret # return from function

vec_avg:
	call vec_sum # call vec_sum

	movw %si, %r8w # r8w = num

	cmpw $0, %r8w # compare to see if num is 0
	je return_zero # if it is, jump to return_zero

	movswl %r8w, %r8d # pass num from short to integer

	cdq # sign extend eax into edx:eax
	idivl %r8d # divide eax by r8d (num)

	ret # return from function

return_zero:
	movl $0, %eax # eax = 0
	ret # return from function
