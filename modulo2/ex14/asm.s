/*
*	Compute the value of: area = (length1 + length2)*heigth/2 lengths and height of the trapeze are stored in three
*integer variables, length1, length2 and height, declared in Assembly, but also accessible from C.
*	The computed result should be printed in C.
*/

.section .data

		# define the variables length1, length2 and height as globals

		.global length1
		length1:
			.int 5
		.global length2
		length2:
			.int 5
		.global height
		height:
			.int 5

.section .text

		# define the function as global
		.global getArea
	
getArea:

		movswl length1(%rip), %eax # move length1 to eax
		movswl length2(%rip), %ecx # move length2 to ecx
		
		addl %ecx, %eax # adds ecx to eax, and the result is stored in eax (length1 + length2)
		
		movswl height(%rip), %ecx # move height to ecx
		
		mull %ecx # multiplies eax to ecx. Result in eax (length1 + length2)*height
		
		movl $2, %ecx # places the value 2 in ecx
		
		divl %ecx # divides eax by ecx, reminder in edx and quocient in eax
		
		ret
