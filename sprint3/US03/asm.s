.section .data

.section .text
.global move_num_vec

move_num_vec:

    # prologue
	pushq %rbp
	movq %rsp, %rbp


    movl (%rdx), %eax             # eax = *read
    cmp %eax, (%rcx)              # if (*read == *write)
    je return_0                   # if equal, jump to return 0

    cmpl $0, %r8d                 # if (num == 0)
    je return_0                   # if equal, jump to return 0

copyLoop:
    cmp $0, %r8d                  # if (num == 0)
    je return_1                   # if equal, jump to return 1

    movl (%rdx), %eax             # eax = *read
    cmp %eax, (%rcx)              # if (*read == *write)
    je return_0                   # if equal, jump to return 0

    movl (%rdx), %r11d            # r11d = *read
    imull $4, %r11d               # r11d = *read * 4
    addq %r11, %rdi               # rdi = array + *read * 4

    movl (%rdi), %r10d            # r10d = array[*read]
    movl %r10d, (%r9)             # *vec = array[*read]

    subq %r11, %rdi               # rdi = array
    addl $1, (%rdx)               # *read += 1
    movl (%rdx), %r10d            # move *read to r10d

    pushq %rdx                    # push rdx to stack

    movl %r10d, %eax              # move r10d to eax
    cltd                          # sign extend eax to edx
    idivl %esi                    # edx = eax % length
    movl %edx, %r10d              # move rest of division to r10d

    popq %rdx                     # pop rdx from stack

    movl %r10d, (%rdx)            # move r10d to *read
    addq $4, %r9                  # increment vec
    decl %r8d                     # decrement num

    jmp copyLoop                  # jump to copyLoop

return_1:

    # epilogue
	movq %rbp, %rsp
	popq %rbp

    movl $1, %eax                 # eax = 1
    jmp end                       # jump to end

return_0:

    # epilogue
	movq %rbp, %rsp
	popq %rbp

    movl $0, %eax                 # eax = 0
    jmp end                       # jump to end

end:
    ret
