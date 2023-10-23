# This function subtracts two short values, short s1 and short s2, in a crossed fashion.
# The function should subtracts to the most significant byte s1 the least significant byte of s2 and
#vice-versa

.section .data
# declares s1 and s2 as globals and sets their types and values
	.global s1
	s1:
		.short 0
	
	.global s2
	s2:
		.short 0
		
.section .text

#declares crossSubBytes as global
.global crossSubBytes

crossSubBytes:

	movw s1(%rip), %cx # load s1 into cx
	movw s2(%rip), %dx # load s2 into dx

	subb %dl, %ch # Subtract the least significant byte of s2 from the most significant byte of s1
	subb %dh, %cl # Subtract the most significant byte of s2 from the least significant byte of s1
	
	movw %cx, %ax # copies the value in cx to ax
	
	ret
