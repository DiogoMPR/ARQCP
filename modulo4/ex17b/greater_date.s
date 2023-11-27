 .section .rodata
.jumptable:

    .long   .year-.jumptable    # 0
    .long   .month-.jumptable   # 1
    .long   .day-.jumptable     # 2
    .long   .date1-.jumptable   # 3
    
.text
    .global greater_date    # uint greater_date(uint date1, uint date2)
    
greater_date:   # edi, esi
    pushq   %rbp
    movq    %rsp, %rbp
    
    xor     %r10d, %r10d            # %ecx = 0
.next:
    leaq    .jumptable(%rip), %r8   # address of .jumptable
    movslq  (%r8, %r10, 4), %r9     # table contains 4 byte offsets relative to the address of .jumptable, get this offset
    addq    %r8, %r9                # add the offset to the address of .jumptable
    jmp     *%r9                    # jump to the address in r9 (* means indirect jump)

.continue:
    and     %edi, %edx      # t1
    and     %esi, %ecx      # t2
    cmp     %ecx, %edx
    jg      .date1
    jl      .date2
    incl    %r10d
    jmp     .next           # keep checking through year > month > day

.year:
    movl    $0x00FFFF00, %edx
    movl    $0x00FFFF00, %ecx
    jmp     .continue

.month:
    movl    $0x000000FF, %edx
    movl    $0x000000FF, %ecx
    jmp     .continue

.day:
    movl    $0xFF000000, %edx
    movl    $0xFF000000, %ecx
    jmp     .continue

.date1:
    movl    %edi, %eax
    jmp     .end

.date2:
    movl    %esi, %eax

.end:
    movq    %rbp, %rsp
    popq    %rbp
    ret
