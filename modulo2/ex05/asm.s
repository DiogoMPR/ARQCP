.section .data
	.global s1

.section .text
.global swapBytes 

swapBytes:

	movw s1(%rip), %cx		# place s1 into cx
	movb %ch, %al			# place most significant byte into al
	movb %cl, %ah			# place least significant byte into ah
	
	ret	
