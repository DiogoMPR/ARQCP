.section .data 
as:
	.byte 'a'
spc:
	.byte ' '
.global as 
.global spc

.section .text
	.global decrypt # function name
	
decrypt:
	movb as(%rip), %dl # dl = 'a'
	movb spc(%rip), %r8b # r8b = ' '
	movl $0, %eax # eax = 0
	
loop:
	movb (%rdi), %cl # cl = byte from ptr

	cmpb $0, %cl # this compare is to see if the list ended
	je end_loop # if it did, end the loop

	cmpb %dl, %cl # compare the byte to 'a'
	jne change # if it's not 'a', go to change

	incq %rdi # increment the pointer to move to the next byte

	jmp loop # jump back to the beginning of the loop

change:
	cmpb %r8b, %cl # compare the byte to ' '
	jne change_now # if it's not ' ', go to change_now

	incq %rdi # increment the pointer to move to the next byte

	jmp loop # jump back to the beginning of the loop
	
change_now:
	subb $1, %cl # subtract 1 from the byte
	movb %cl, (%rdi) # move the new byte to the pointer
	incq %rdi # increment the pointer to move to the next byte
	addl $1, %eax # add 1 to the counter
	jmp loop # jump back to the beginning of the loop

end_loop:
	ret # return from the function
