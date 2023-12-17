.text
    .global distance    # int distance(char *a, char *b)

distance:   # rdi, rsi
    pushq   %rbp
    movq    %rsp, %rbp
    
    xor     %eax, %eax

.loop:
    movb    (%rdi), %dl
    movb    (%rsi), %cl
    movb    %dl, %r8b       # use more registers but less memory access
    
    or      %cl, %r8b
    
    test    %r8b, %r8b
    jz      .end            # if both a or b are 0
    
    movb    %dl, %r8b
    and     %cl, %r8b
    jz      .oops           # if one of them is 0
    
    inc     %rdi            # a to next byte
    
    inc     %rsi            # b to next byte
    
    xor     %dl, %cl
    je      .loop           # if they are the same, don't add 1 to result
    incl    %eax
    jmp     .loop

.oops:
    xor     %eax, %eax      # set result to 0
    not     %eax            # invert all bits of eax (set it to -1)

.end:
    movq    %rbp, %rsp
    popq    %rbp
    ret
