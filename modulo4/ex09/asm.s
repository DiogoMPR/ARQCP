.section .text
    .global calculate   		# int calculate(int a, int b)
calculate:
    pushq   %rbp
    movq    %rsp, %rbp

    # edi, esi, edx, ecx
    movl    %esi, %r8d 			# saved b
    movl    %edi, %esi  		# 2nd arg = a
    movb    $'*', %dil  		# 1st arg set
    movl    %esi, %ecx
    imull   %r8d, %ecx  		# 4th arg = product    
    movl    %r8d, %edx  		# 3rd arg = b
    
    pushq   %rcx
    pushq   %rdx
    pushq   %rsi
    
    call    print_result
    popq    %rsi
    popq    %rdx
    
    movl    %esi, %ecx			# a to %ecx
    subl    %edx, %ecx			# b - a
    movb    $'-', %dil  		# 1st arg updated
    
    pushq   %rcx
    call    print_result
    
    popq    %rax    			# %eax = diff
    popq    %rcx    			# %rcx = product
    subl    %ecx, %eax			# %eax = diff - product

    movq    %rbp, %rsp
    popq    %rbp
    ret
