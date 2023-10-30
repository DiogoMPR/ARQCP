.section .data
	.global num
	.global ptr

.section .text

.global vec_add_three

vec_add_three:

	movq $0, %rcx
	cmpq $0, %rsi
	je end
	
loop:
	addw $3, (%rdi, %rcx, 2)
	incq %rcx
	cmpq %rsi, %rcx
	jl loop
	jmp end
		
end:
	ret 
	 
