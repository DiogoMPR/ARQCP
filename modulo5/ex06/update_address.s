.section .data

.section .text
	
	.global update_address # void update_address(Student *s, char *new_address)
	
	# rdi -> *s
	# rsi -> *new_address
	
	# Offset:
	# number : 0
	# age : 2
	# grades : 4
	# name : 24
	# address : 85
	
update_address:

	leaq 85 (%rdi), %rax # computes the efective address of the destination operand (address field), the result is stored in rax
	
loop:

	# copies each byte from 'new_address' to 'address'
	
	movb (%rsi), %r9b
	movb %r9b, (%rax)
	
	testb %r9b, %r9b # tests if the value in %r9b is zero (checks if the end of 'new address' was reached)
	je end # jumps to 'end' if it's equals
	
	incq %rsi
	incq %rax
	
	jmp loop
	
end:
	
	ret
	
