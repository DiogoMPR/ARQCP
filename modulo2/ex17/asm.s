.section .data
# Nenhuma seção de dados é necessária neste exemplo

.section .text

.global _add
_add:
    # Recebe dois inteiros em %edi e %esi
    addl %esi, %edi
    movl %edi, %eax
    ret

.global _subtract
_subtract:
    # Recebe dois inteiros em %edi e %esi
    subl %esi, %edi
    movl %edi, %eax
    ret

.globl _multiply
_multiply:
    # Recebe dois inteiros em %edi e %esi
    imull %esi, %edi
    movl %edi, %eax
    ret

.global _divide
_divide:
    # Recebe dois inteiros em %edi e %esi
    movl $0, %edx
    idivl %esi
    movl %eax, %eax
    ret

.global _modulus
_modulus:
    # Recebe dois inteiros em %edi e %esi
    movl $0, %edx
    idivl %esi
    movl %edx, %eax
    ret

.globl _power_of_2
_power_of_2:
    # Recebe um inteiro em %edi
    movl %edi, %eax
    sal %cl, %eax # Desloca para a esquerda em cl posições (cl = edi)
    ret

.global _power_of_3
_power_of_3:
    # Recebe um inteiro em %edi
    movl $1, %eax
    movl %edi, %ecx
.loop:
    imull %edi, %eax
    loop .loop
    ret
