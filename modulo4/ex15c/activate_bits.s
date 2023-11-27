.text
    .global activate_bits   # int activate_bits(int a, int left, int right)
activate_bits:
    # edi, esi, edx
    # prologue
    pushq   %rbp
    movq    %rsp, %rbp

    cmp     $31, %esi
    je      .left0
    movl    $0xffffffff, %r8d   # lmask
    incl    %esi
    movb    %sil, %cl
    sal     %cl, %r8d           # lmask <<= left+1
    jmp     .right
.left0:
    xor     %r8d, %r8d
.right:
    test    %edx, %edx
    je      .right0
    movl    $0xffffffff, %r9d   # rmask
    movb    $32, %cl
    subb    %dl, %cl
    shr     %cl, %r9d           # rmask >>= 32-right
    jmp     .continue
.right0:
    xor     %r9d, %r9d
.continue:
    movl    %edi, %eax
    or      %r8d, %eax
    or      %r9d, %eax
    # epilogue
    movq    %rbp, %rsp
    popq    %rbp
    ret
