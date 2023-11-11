.section .data

.section .text
	.global vec_zero # defines 'vec_zero' as global
	
vec_zero:
	movb $0, %al # place 0 in al
	
loop:
	cmpl $0, %esi # compares the array size with 0
	je end # if num is 0, jumps to 'end'
	movl (%rdi), %edx # moves the element pointed by ptr to edx
	cmpl $50, %edx # verifies if the element pointed by ptr is equal to 50
	jge change # if the value is greater or equal to 50, jumps to 'change'
	addq $4, %rdi # increment rdi by 4 in order to point to the next int
	decl %esi # decrement the size of the array by 1
	jmp loop
		
change:
	movl $0, (%rdi) # place 0 in rdi
	addq $4, %rdi # increment ptr by 4 in order to point to the next element
	incb %al # increment al by 1
	decl %esi # decrement num by 1	
	jmp loop
	
end:
	ret
	
