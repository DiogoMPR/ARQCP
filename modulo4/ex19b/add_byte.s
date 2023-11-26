.text
    .global add_byte
add_byte:
    # dil, rsi, rdx
    
    pushq   %rbp
    movq    %rsp, %rbp

    movl    (%rsi), %ecx
    movl    %ecx, (%rdx)
.loop:
    
    test    %rcx, %rcx
    jz      .end                    # if 0 end
    movl    (%rsi, %rcx, 4), %r8d   # %r8d = vec1[i]
    addb    %dil, %r8b              # last byte of vec1[i] + x
    movl    %r8d, (%rdx, %rcx, 4)
    loop    .loop
.end:
    movq    %rbp, %rsp
    popq    %rbp
    ret
