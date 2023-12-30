.section .data

.section .text
	
	.global validar_pressao
	
	validar_pressao:
		
		movl $0, %eax
		movl %edi, %esi   #limite
		movl %edi, %edx   #pressao
		
		shrl $8, %esi
		andl $0x3FF, %esi
		
		shrl $18, %edx
		
		movl %edx, %eax
		imull $100, %eax
		
		cdq
		idivl %esi
		
		cmp $120, %eax
		jg validado
		
		movl $0, %eax
	
	end:
		ret									# return
		
	validado:
		movl $1, %eax
		jmp end
