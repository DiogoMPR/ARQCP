.section .text
	
	.global locate_greater # int locate_greater(Student *s, int minimum, int *greater_grades).
	
	# rdi -> *s
	# esi -> minumum
	# rdx -> *greater_grades
	
	# Offset:
	# number : 0
	# age : 2
	# grades : 4
	# name : 24
	# address : 85
	
locate_greater:

	leaq 4(%rdi), %rcx # computes the efective address of the destination operand (grades field), the result is stored in rcx
	movl $0, %eax # place 0 in eax (counter)
	
	movq $5, %r8 # place 5 in r8 (iterator throw the grades array)
	
checker:
	
	cmpl %esi, (%rcx) # compares the minimum (esi), with the value pointed by *s
	jle next_grade # if the value is <= minimum, jumps to 'next_grade'
	
	incl %eax # increments the number of grades added to greater_grades 
	
	# moves the current grade to the 'greater_grades' array
	
	movl (%rcx), %r9d 
	movl %r9d, (%rdx)
	
	addq $4, %rdx # increment the address of greater_grades by 4 (capacity to another element)
	
next_grade:

	addq $4, %rcx # makes the *s pointer point the next element
	 
	decq %r8 # r8-- (decrements the counter of the elements in the grades array )
	jnz checker # if the value in r8 isn´t 0, jumps to 'checker'
	
end:

	ret


	
	
