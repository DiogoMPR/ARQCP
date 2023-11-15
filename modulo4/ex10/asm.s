.section .data

.section .text

	.global decr # defines 'decr' as global
	.global call_decr # defines 'call_decr' as global
	
decr:

	# prologue
	
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp # allocate 16 bytes on the stack for x and y local variables
	
	movswl (%rdi), %eax # copies the short value in rdi and converts it into an int in eax ((int)*p1)
	movl %eax, -8(%rbp) # copies the value in eax to the x variable
	
	movsbl %sil, %ecx # copies the char value from sil, converts it into a int and places it in ecx (int val)
	imull $2, %ecx # multiplies ecx by 2, the value is in ecx
	
	subl %ecx, -8(%rbp) # subtract x to the value in ecx
	movl -8(%rbp), %edx # copies the value in the x variable to edx
	
	movl %edx,-16(%rbp) # place the result in y
	movl -16(%rbp), %r8d
	
	movl %r8d, (%rdi) # copies the value in r8d to rdi
	 
	# epilogue
	
	movq %rbp, %rsp
	popq %rbp
	
	ret
	
call_decr:

	# prologue
	
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp # allocate 16 bytes on the stack for two local variables
	
	addw $3, %di # adds 3 to the value in di
	movw %di, -8(%rbp) # copies the value in di and puts it in a local variable
	
	leaq -8(%rbp), %rdi # turn &x1 into the first parameter
	movb $0x3C, %sil # turn 0x3C into the second parameter
	
	pushq	%rcx
	pushq	%rax
	pushq	%r8
	pushq	%r9
	
	call 	decr
	
	movl 	%eax, -16(%rbp)		# copies the value in eax to the second local variable
	
	popq	%r9
	popq	%r8
	popq	%rax
	popq	%rcx
	
	movswl	-8(%rbp), %eax		# copies the value in the first local variable and puts it in eax
	addl	-16(%rbp), %eax		# adds the value in the second local variable to eax
	
	#epilogue
	movq 	%rbp, %rsp
	popq	%rbp
	
ret
