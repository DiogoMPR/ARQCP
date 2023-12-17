.section .data
    .equ UNION_B_OFFSET, 24
    .equ SIZEOF_STRUCT_A, 32

.section .text
    .global return_unionB_b
    

return_unionB_b:
    # prologue
    pushq   %rbp
    movq    %rsp, %rbp

    
    # local variable setup
    movq    %rdi, -8(%rbp)      # Moves matrix into a local variable
    movl    %esi, -12(%rbp)     # Moves i into a local variable
    movl    %edx, -16(%rbp)     # Moves j into a local variable

    
    movl    -12(%rbp), %eax     # Moves i to eax
    cltq                        # Sign-extends i to rax
    leaq    0(,%rax,8), %rdx    # rdx = 8 i
    movq    -8(%rbp), %rax      # Moves matrix to rax
    addq    %rdx, %rax          # rax = (matrix + i 8)

   
    movq    (%rax), %rax        # Dereference the pointer to structA
    movl    -16(%rbp), %edx     # Moves j to edx
    movslq  %edx, %rdx          # Sign-extends j to rdx
    imulq   $SIZEOF_STRUCT_A, %rdx            # Multiply j by sizeof(structA)
    addq    %rdx, %rax          # rax points to matrix[i][j]
    movzwl  UNION_B_OFFSET(%rax), %eax      # Access the b member of unionB and zero-extend to 32 bits

    movq %rbp, %rsp
    popq %rbp
	
	ret
