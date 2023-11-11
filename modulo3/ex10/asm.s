.section .data

.section .text
	.global str_cat # defines 'str_cat' as global

str_cat:

ptr1_loop:
	movb (%rdi), %cl # copies the byte from rdi to cl (ptr1)
	movb %cl, (%rdx) # copies the byte from ptr1 in cl to ptr3 (rdx)
	
	cmpb $0, %cl # compares byte from cl with 0 in order to know if the string pointed by ptr1 already ended
	je ptr2_loop # if the string in ptr1 already ended, jumps to 'ptr2_loop'
	
	inc %rdi # increments rdi in order to point to the next position
	inc %rdx # increments rdx in orer to point to the next position 
	
	jmp ptr1_loop

ptr2_loop:
	movb (%rsi), %cl # copies the byte from rsi to cl (ptr2)
	movb %cl, (%rdx) # copies the byte in cl to ptr3 (rdx)
	
	cmpb $0, %cl # compare byte from cl with 0 in order to know if the string pointed by ptr2 already ended
	je end # if equals, jumps to 'end' condition
	
	inc %rsi # increments rsi in order to point to the next position
	inc %rdx # increments rdx in order to point to the next position
	
	jmp ptr2_loop
	
end:
	ret
