.section .data

a:
	.byte 'a' # define 'a' as a byte with 'a' value assigned
	
space:
	.byte ' ' # define 'space' as a byte with ' ' value assigned
	
.global a # define 'a' as global
.global space # define 'space' as global	 

.section .text

.global encrypt # define 'encrypt' as global

encrypt:

movb a(%rip), %dl # place 'a' in dl
movb space(%rip), %r8b # place 'space' in r8b
movl $0, %eax # place 0 in eax

loop:

movb (%rdi), %cl # place the byte pointed by ptr in dl

cmpb $0, %cl # compares 0 with the value in dl
je end # jumps to the 'end' condition

cmpb %dl, %cl # compares the character pointed with 'a'
jne addiction # if it's not equals, jumps to addiction condition

incq %rdi # increment the pointer to move to the next character

jmp loop

addiction:

cmpb %r8b, %cl # compares the character pointed with ' '
jne change # if it's not ' '
incq %rdi # increment the pointer to move to the next character
jmp loop

change:
addb $1, %cl # adds 1 to the byte in dl
movb %cl, (%rdi) # place the value in dl to rdi
incq %rdi # increment the pointer to move to the next character
addl $1, %eax # adds 1 to eax, the counter
jmp loop

end:

ret
