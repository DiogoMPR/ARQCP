.section .data 
us:
    .byte 'u'
vs:
    .byte 'v'
hus:
    .byte 'U'
hvs:
    .byte 'V'
.global us
.global vs
.global hus
.global hvs

.section .text
.global str_copy_roman2 # function name

str_copy_roman2:
    movb us(%rip), %dl # %dl = 'u'
    movb vs(%rip), %r8b # %r8b = 'v'
    movb hus(%rip), %r9b # %r9b = 'U'
    movb hvs(%rip), %r10b # %r10b = 'V'

loop:
    movb (%rdi), %cl # %cl = byte from ptr1

    cmpb $0, %cl # this compare is to see if the list ended
    jz end_loop # if it did, jump to end_loop

    cmpb %dl, %cl # compare the byte from ptr1 to 'u'
    je change # if they are equal, jump to change

    cmpb %r9b, %cl # compare the byte from ptr1 to 'U'
    je changeh # if they are equal, jump to changeh

    movb %cl, (%rsi) # if they are not equal, copy the byte from ptr1 to ptr2

    incq %rdi # increment both pointers
    incq %rsi # to move to the next byte

    jmp loop # jump back to the beginning of the loop

change:
    movb %r8b, (%rsi) # copy 'v' to ptr2

    incq %rdi # increment both pointers
    incq %rsi # to move to the next byte

    jmp loop # jump back to the beginning of the loop
    
changeh:
    movb %r10b, (%rsi) # copy 'V' to ptr2

    incq %rdi # increment both pointers
    incq %rsi # to move to the next byte

    jmp loop # jump back to the beginning of the loop

end_loop:
    movb $0, (%rsi) # add null terminator to the end of the string
    ret # return from function
