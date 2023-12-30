.section .text
.global extract_token

extract_token:
    pushq %rdi                     # Guarda o valor original de %rdi na pilha
    movzbl (%rsi), %ecx            # Carrega o primeiro byte de %rsi para %ecx e zera os bits superiores
    cmp $0, %ecx                   # Compara %ecx com 0 para verificar se é o fim da string
    je return_if_invalid           # Salta para 'return_if_invalid' se %ecx é 0
    movq %rsi, %r8                 # Guarda o valor original de %rsi em %r8
    xor %rcx, %rcx                 # Zera %rcx
    xor %rax, %rax                 # Zera %rax

compare_loop:
    movzbq (%rdi), %r10           # Carrega byte da string em %r11
    movzbq (%rsi), %r11            # Carrega byte da palavra em %r10
    cmp $0, %r11                   # Verifica se é o fim da palavra
    je match_found                 # Se for o fim, salta para 'match_found'
    cmp $0, %r10                   # Verifica se é o fim da string
    je return_if_invalid           # Se for o fim, salta para 'return_if_invalid'
    cmp %r11, %r10                 # Compara os bytes da string e da palavra
    jne no_match                   # Se diferentes, salta para 'no_match'
    incq %rsi                      # Incrementa o ponteiro da palavra
    incq %rdi                      # Incrementa o ponteiro da string
    jmp compare_loop               # Repete o loop

match_found:
    movzbq (%rdi), %r10           # Carrega byte da string em %r11
    cmp $48, %r10b                # Compara %r10b com 48
    jge get_value                 # Se %r10b é menor que 48, pula para get_value
    cmp $57, %r10b                # Compara %r10b com 57
    jle get_value                 # Se %r10b é maior que 57, pula para get_value
    cmp $58, %r10b
    je get_value                  # Salta para 'get_value'
    jmp no_match

no_match:
    movq %r8, %rsi                 # Restaura %rsi ao valor original
    incq %rdi                      # Incrementa o ponteiro da string
    jmp compare_loop               # Retorna ao loop

get_value:
    movq $0, %rax                  # Define %rax como 0
    movq $0, %rcx                  # Define %rcx como 0

extract_number:
    movzbq (%rdi), %rcx            # Carrega byte da string em %rcx
    cmp $0, %cl                    # Verifica se é o fim da string
    je return_parameters           # Se for, salta para 'return_parameters'
    cmp $46, %cl                   # Verifica se é ponto (.)
    je inc_rdi                     # Se for, salta para 'inc_rdi'
    cmp $58, %cl
    je inc_rdi
    cmp $35, %cl                   # Verifica se é cerquilha (#)
    je return_parameters           # Se for, salta para 'return_parameters'
    cmpb $65 , %cl                 # Verifica se o caractere não é um número
    jge invalid_value              # Se for maior que 'A', salta para 'invalid_value'
    sub $'0', %cl                  # Converte ASCII para número
    imulq $10, %rax                # Multiplica %rax por 10
    add %rcx, %rax                 # Adiciona o dígito a %rax
    incq %rdi                      # Incrementa o ponteiro da string
    jmp extract_number             # Continua o loop


inc_rdi:
    incq %rdi                      # Incrementa o ponteiro da string para não ser lido o ponto e as casas decimais
    jmp extract_number             # Continua o loop

return_parameters:
    movq %r8, %rsi                 # Restaura %rsi ao valor original
    popq %rdi                      # Restaura %rdi do topo da pilha
    movl %eax, (%rdx)              # Armazena o valor em %rdx
    ret                            # Retorna da função

return_if_invalid:
    popq %rdi                      # Restaura %rdi do topo da pilha
    movq $0x55555555, %rdx                  # Define %rdx como 0
    ret

invalid_value:
    movq %r8, %rsi                 # Restaura %rsi ao valor original
    popq %rdi                      # Restaura %rdi do topo da pilha
    movq $0x55555555, %rdx         # Define %rdx como 0
    ret                            # Retorna da função
