.section .data

.section .text
    .global keep_positives # keep_positives is the name of the function
    
keep_positives:
    movl $0, %edx # initialize %edx to 0

loop:
    cmpl %edx, %esi # compare %edx to %esi
    je end # if equal, jump to end
    movl (%rdi), %ecx # load the value at %rdi into %ecx
    cmpl $0, %ecx # compare %ecx to 0
    jl change_array # if %ecx is less than 0, jump to change_array
    addq $4, %rdi # increment %rdi by 4
    incl %edx # increment %edx by 1
    jmp loop # jump to loop

change_array:
    movl %edx, (%rdi) # store the value of %edx at %rdi
    addq $4, %rdi # increment %rcx by 2
    incl %edx # increment %edx by 1
    jmp loop # jump to loop

end:
    ret # return from the function
