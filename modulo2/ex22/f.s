.section .data
	.global i #defines i as global
	.global j # defines j as global
	
.section .text
	.global f # defines 'f' function as global
	
f:
	movl i(%rip), %eax		# place i in eax
	movl j(%rip), %ecx		# place j in ecx
	cmp %eax, %ecx			# compares the values in eax and ecx
	je equal				# jumps if the values in eax and ecx are equal
	addl %ecx, %eax			# adds the value in ecx to the one in eax, the result is stored in ecx
	decl %eax				# decrements the value stored in eax by one
	jmp end					# jump to end condition
	
equal:
	subl %ecx, %eax			# subtracts the value in ecx to eax, the result is stored in eax
	incl %eax				# increments the value in eax by one
	
end:

	ret
