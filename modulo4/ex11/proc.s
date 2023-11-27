.text
    .global proc    # void proc(int x1, int *p1, int x2, int *p2, short x3, short *p3, char x4, char *p4)
proc:
    pushq   %rbp
    movq    %rsp, %rbp

    movl    %edi, (%rsi)
    addl    %edx, (%rsi)            # *p1 = x1 + x2
    movl    %edx, (%rcx)
    subl    %edi, (%rcx)            # *p2 = x2 - x1
    movw    %r8w, (%r9)             # x2: edx; x3: r8d
    addl    %edx, (%r9)             # *p3 = x3 + x2
    
    movq    16(%rbp), %r10          # x4 (7th arg)
    movq    24(%rbp), %r11          # p4 (8th arg)
    
    leaq    (%r10, %r10, 2), %rax   # x4 * 3
    movb    %al, (%r11)

    movq    %rbp, %rsp
    popq    %rbp
    ret
