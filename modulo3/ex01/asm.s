.section .data 
cinco:
    .byte '5'
.global cinco 
    
.section .text
    .global five_count # function name

five_count:
    movb cinco(%rip), %dl # move '5' into %dl
    movl $0, %eax # set %eax to 0

#------------------loop the list-------------------

loop:
    movb (%rdi), %cl # move byte at %rdi into %cl

    cmpb %dl, %cl # compare if byte at %cl is equal to '5'
    je increment # if equal, jump to increment

    cmpb $0, %cl # this compare is to see if the list ended
    jz end_loop # if it did, jump to end_loop
    
    incq %rdi # increment %rdi
    jmp loop # jump back to the beginning of the loop

#------------------increment-----------------------

increment:
    incl %eax # increment %eax
    incq %rdi # increment %rdi
    jmp loop  # jump back to the beginning of the loop

#------------------end-----------------------------

end_loop:
    ret # return
