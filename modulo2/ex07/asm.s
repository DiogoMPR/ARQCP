.section .data
	.global s1
	.global s2
	
.section .text
.global crossSubBytes

crossSubBytes:
	
	movw s1(%rip), %ax
	movw s2(%rip), %cx
	
	movb %cl, %ah 
	subb %al, %ch
	
	movw %cx, %ax
	
	ret    
