.text
.global call_proc       # int call_proc(int a, int b, short c, char d)
call_proc:
    # prologue
    pushq   %rbp            # save current base pointer
    movq    %rsp, %rbp      # base pointer points to the top of the stack (stack pointer)
    subq    $32, %rsp       # allocate space for local variables
    
    movl    %edx, %r8d      # set 5th arg 
    movl    %esi, %edx      # set 3rd arg
    leaq    -8(%rbp), %rsi  # set 2nd arg (pointer to a space in memory)
    leaq    -32(%rbp), %r10 # get the address of an allocated space
    pushq   %r10            # set 8th arg (p4)
    pushq   %rcx            # set 7th arg (x4)
    leaq    -16(%rbp), %rcx # set 4th arg (pointer)
    leaq    -24(%rbp), %r9  # set 6th arg  ^^^
    call    proc
    movl    -8(%rbp), %eax
    addl    -16(%rbp), %eax # x1+x2
    
    movswl  -24(%rbp), %r10d
    movsbl  -32(%rbp), %r11d
    subl    %r11d, %r10d    # x3-x4
    
    imull   %r10d, %eax

    # epilogue
    movq    %rbp, %rsp      # free space allocated for the local variables + args for other functions
    popq    %rbp            # restore the base pointer
    ret
