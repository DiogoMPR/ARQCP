.section .data

.section .text
	
	.global fechar_passadores
	
	fechar_passadores: # int fechar_passadores(unsigned int *passadores, int n, unsigned int *fechados)
	
		movl $0, %ecx
		movl $0, %r8d
		
	loop:
		
		cmp %ecx, %esi
		je end
		
		pushq %rdi
		pushq %rsi
		pushq %rdx
		
		movl (%rdi, %rcx, 4), %esi
		movl %esi, %edi
		
		call validar_pressao
		
		popq %rdx
		popq %rsi
		popq %rdi
		
		cmp $1, %eax
		jne next
		
		orl $1, (%rdi, %rcx, 4)
		incl %r8d
		movl (%rdi, %rcx, 4), %r9d
		movl %r9d, (%rdx)
		addq $4, %rdx
	
	next:
		incl %ecx
		jmp loop
		
	
	end:
		movl %r8d, %eax
		ret
