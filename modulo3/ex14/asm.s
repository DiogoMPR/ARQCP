.section .data

.section .text
	.global exists # defines 'exists' as global
	.global vec_diff # defines 'vec_diff' as global
	
exists:
	movl $0, %eax # place 0 in eax
	movl $0, %r8d # place 0 in r8d

loop:
	cmpl %r8d, %esi # check if r8d is equal to esi (checks if the array is empty)
	je duplicated_loop # if they are equal, jumps to 'duplicated_loop'
	cmpl (%rdi), %edx # checks if the value at rdi is equal to edx (elemented pointed by ptr and x)
	je duplicated # if they are equal, jumps to 'duplicated'
	addq $4, %rdi # increment rdi by 4 in order to point to the next element
	incl %r8d # increment r8d by 1
	jmp loop # jumps inconditionally to 'loop'
	
duplicated:
	cmpl $1, %eax # checks if the value in eax is 1, in other words, checks if the number is present more than two times in the array
	je end # if eax is 1. jumps to 'end'
	incl %eax # increment eax by one
	addq $4, %rdi # increment rdi by 4, in order to point ot the next element
	incl %r8d # increment r8d by 1
	jmp loop # jumps inconditionally to 'loop'
	
duplicated_loop:
	cmpl $1, %eax # verifies is the value in eax is 1
	je end_exists # if eax got the value 1, jumps to 'end_exists'
	jmp end # jumps to 'end'
	
end_exists:
	movl $0, %eax # place 0 in eax
	jmp end # jumps to 'end'
	
vec_diff:
	leaq (%rdi), %rcx # load the address of rdi into rcx
	leaq (%rdi), %r9 # load the address of rdi into r9
	movl $0, %r10d # place 0 in r10d
	movl $0, %r11d # place 0 in r11d
	
difference_loop:
	cmpl %r11d, %esi # check if the size of the array is 0
	je end_difference_loop # if it´s equal, jumps to 'end_difference_loop'
	movl (%rcx), %edx # copies the value in rcx to edx
	leaq (%r9), %rdi # load the address of r9 in rdi
	call exists # call exists
	cmpl $0, %eax # check if eax is 0
	je vec_difference_inc # if eax is 0, jumps to 'vec_difference_inc'
	addq $4, %rcx # increments rcx by 4, in order to point to the next element
	incl %r11d # increments r11d by 1
	jmp difference_loop

vec_difference_inc:
	incl %r10d # increments r9d by 1
	addq $4, %rcx # increment rcx by 4 in order to point to the next element
	incl %r11d # increment r11d by 1
	jmp difference_loop
	
end_difference_loop:
	movl %r10d, %eax # copies the value in r9d to eax
	jmp end # jumps inconditionally to 'end'
	
end:
	ret

