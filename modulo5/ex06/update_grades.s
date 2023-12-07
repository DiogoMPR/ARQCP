.section .text

	.global update_grades # void update_grades(Student *s, int *new_grades)
	
	# rdi -> *s
	# rsi -> *new_grades
	
	# Offset:
	# number : 0
	# age : 2
	# grades : 4
	# name : 24
	# address : 85
	
update_grades:

	leaq 4(%rdi), %rcx # computes the efective address of the destination operand (grades field), the result is stored in rcx
	
	movq $5, %rdx # place 5 in rdx (used to iterate the grades array)
	movq $0, %rax # place 0 in rax (used to store each value of 'new_grades')
	
loop:

	movl (%rsi), %eax
	movl %eax, (%rcx)
	
	addq $4, %rsi # increment the 'new_grades' pointer
	addq $4, %rcx # increment the 's' pointer
	
	decq %rdx # rdx --
	jnz loop # if the condition is matched, jumps to 'loop'
	
end:
	 
	ret
