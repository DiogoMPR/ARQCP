.section .data
	.global s
	.global vi
	.global vc
	.global vj
	.global vd
	.equ I_OFFSET, 0
	.equ C_OFFSET, 4
	.equ D_OFFSET, 5
	.equ J_OFFSET, 8

.section .text 
	.global fill_s1
	
	
fill_s1:	
	# Preenche a estrutura s1 com valores específicos
	# Parâmetros:
	#   %rdi: Endereço base da estrutura s1
	#   %dl: Valor a ser atribuído ao byte em C_OFFSET
	#   %esi: Valor a ser atribuído ao inteiro em I_OFFSET
	#   %r8b: Valor a ser atribuído ao byte em D_OFFSET
	#   %ecx: Valor a ser atribuído ao inteiro em J_OFFSET

	# Atribui o valor de %dl ao byte em C_OFFSET
	movb %dl, C_OFFSET(%rdi)
	# Atribui o valor de %esi ao inteiro em I_OFFSET
	movl %esi, I_OFFSET(%rdi)
	# Atribui o valor de %r8b ao byte em D_OFFSET
	movb %r8b, D_OFFSET(%rdi)
	# Atribui o valor de %ecx ao inteiro em J_OFFSET
	movl %ecx, J_OFFSET(%rdi)
    
	# Retorna da função
	ret
