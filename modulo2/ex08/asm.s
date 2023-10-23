# This function subtracts two short values, short s1 and short s2, in a crossed fashion.
# The function should subtracts to the most significant byte s1 the least significant byte of s2 and
#vice-versa

.section .data
# declares s1 and s2 as globals and sets their types and values
	.global s1
	s1:
		.short 90
	
	.global s2
	s2:
		.short 54
		
.section .text

#declares crossSubBytes as global
.global crossSubBytes

crossSubBytes:

	mov s1(%rip), %ax # load s1 into ax
	mov s2(%rip), %cx # load s2 into cx

	subb %cl, %ah # Subtract the least significant byte of s2 from the most significant byte of s1
	subb %al, %ch # Subtract the least significant byte of s1 from the most significant byte of s2
	
	movb %ch, %al # copies the value in ch to al
	
	ret
