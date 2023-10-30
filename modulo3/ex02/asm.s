.section .data

	.global ptr1 
	.global ptr2
	
.section .text

	.global str_copy_roman

str_copy_roman:
	movb (%rdi), %cl # copy the char from str1 (pointed by rdi) to cl
	cmpb $0, %cl # check if this is the end of the string
	je end # jump if it's the end
	cmpb $'u', %cl # check if the char pointed is 'u'
	jne not_lowercase_u # if it's true, jumps to the condition
	movb $'v', (%rsi) # place 'v' in str2
	incq %rdi # move to the next char in str1
	incq %rsi # move to the next char in str2
	jmp str_copy_roman
not_lowercase_u:
	movb %cl, (%rsi) # Copy char in cl to str2 (pointed by rsi)
	incq %rsi # move to the next char in str2
	incq %rdi # move to the next char in str1
	jmp str_copy_roman  # jump unconditionally to loop.
end:
	movb $0, (%rsi) # place the 0 byte in (%rsi)
	ret
	
