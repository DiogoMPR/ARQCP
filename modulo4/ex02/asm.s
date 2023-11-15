.section .data

.section .text
	
	.global sum2_n # defines 'sum2_n' as global
	
sum2_n:
	
	# prologue
	pushq %rbp
	movq %rsp, %rbp
	
	movq $1, %rcx # place 1 in rcx (i)
	movq $0, %rax # place 0 in rax (sum)
	movslq %edi, %rdi # recizes edi to rdi (n)
	
loop:
	
	cmpq %rdi, %rcx # compares i with n (parameter)
	jg end # if i > n, jumps to 'end' condition
	movq %rcx, %rdx # copies the value in rcx to rdx (i)
	addq %rdx, %rax # sums the value in rdx to rax
	incq %rcx # increments rcx by one
	jmp loop
	
end:

	imulq %rax, %rax # square the sum
	
	#epilogue
	movq %rbp, %rsp
	popq %rbp
	ret
	
	
	
