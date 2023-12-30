.section .data
    .global s  # rdi
    .equ X_OFFSET, 0
    .equ STRUCT_B_X_OFFSET, 0
    .equ STRUCT_B_A_OFFSET, 4
    .equ STRUCT_A_Y_OFFSET, 0
    .equ STRUCT_A_X_OFFSET, 4
    .equ STRUCT_B_B_OFFSET, 16
    .equ STRUCT_B_Z_OFFSET, 24
    .equ STRUCT_B_C_OFFSET, 26
    .equ STRUCT_B_Y_OFFSET, 27
    .equ STRUCT_B_E_OFFSET, 31
    .equ STRUCT_B_AX_OFFSET, 8

.section .text
    .global fun1
    .global fun2
    .global fun3
    .global fun4


fun1:
    # fun1 extracts the value of s -> a.x and stores it in %rax
    movq STRUCT_B_AX_OFFSET(%rdi), %rax  # Load s -> a.x (offset 8 from %rdi) into %rax
    jmp end                              # Jump to the end

fun2:
    # fun2 extracts the value of s -> z and stores it in %rax
    movq STRUCT_B_Z_OFFSET(%rdi), %rax  # Load s -> z (offset 24 from %rdi) into %rax
    jmp end                              # Jump to the end

fun3:
    # fun3 loads the address of s -> z into %rax
    leaq STRUCT_B_Z_OFFSET(%rdi), %rax  # Load the address of s -> z (offset 24 from %rdi) into %rax
    jmp end                              # Jump to the end

fun4:
    # fun4 extracts the value of s -> b -> x and stores it in %rax
    movq STRUCT_B_B_OFFSET(%rdi), %r12  # Load s -> b (offset 16 from %rdi) into %r12
    movq STRUCT_A_X_OFFSET(%r12), %rax  # Load s -> b -> x (offset 4 from %r12) into %rax
    jmp end                              # Jump to the end

end:
    ret    # Return from the function
