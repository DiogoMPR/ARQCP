.section .data
.global op1
.global op2
.global fsub
.equ CONST, 20

.section .text
.global another_sum

another_sum:
    movl $CONST, %eax  # Carrega a constante CONST em %eax
    movl op1(%rip), %ecx
    movl op2(%rip), %edx

    subl %ecx, %eax
    subl %edx, %eax
    addl $CONST, %eax  # Adiciona a CONST à soma
    addl $CONST, %eax  # Adiciona a CONST à soma

    ret
