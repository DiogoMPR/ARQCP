.section .data
	.global i # defines i as global
	.global j # defines j as global
	
.section .text
	.global f2 # defines f2 function as global

f2:
	movl i(%rip), %ecx		# place i in ecx
	movl j(%rip), %eax		# place j in eax
	cmp %eax, %ecx			# compares the value in ecx to the one in eax
	jg greater				# jump greater condition to if the value in eax is greater than the value in ecx
	incl %eax				# increments the value in eax by one
	jmp end					# jump to end
	
greater:
	decl %edx				# decrements the value in edx by one
	
end:
	imull %edx				# multiplies the value in eax by the one in edx
	
	ret
