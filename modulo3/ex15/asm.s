.section .data

.section .text
    .global sum_third_byte # sum_first_byte is the name of the function
    
sum_third_byte:
    movl $0, %eax # initialize eax to 0
    addq $2, %rdi # increment rdi by 2

array_loop:
    cmpl $0, %esi # check if esi is 0
    je end # if esi is 0, jump to end
    movb (%rdi), %dl # load the third byte of the value pointed to by rdi into dl
    movsbl %dl, %ecx # extend dl into ecx
    addl %ecx, %eax # add ecx to eax
    addq $8, %rdi # increment rdi by 8
    decl %esi # decrement esi
    jmp array_loop # jump to array_loop

end:
    ret # return from function
