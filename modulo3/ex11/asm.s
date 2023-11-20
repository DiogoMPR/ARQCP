.section .data

.section .text
    .global vec_greater12 # vec_greater10 is the name of the function
    
vec_greater12:
    movl $0, %eax # load 0 into eax
    movl $0 , %ecx # load 0 into ecx

loop:    
    cmpl $0 , %esi # compare esi with 0
    je end # if esi is 0, jump to end
    cmpl $12 , (%rdi) # compare the value at rdi with 12
    jg increment # if the value at rdi is greater than 12, jump to incrementa
    addq $4, %rdi # increment rdi by 4
    subl $1 , %esi # decrement esi by 1
    jmp loop # jump to loop
    
increment:
    incl %ecx # increment ecx by 1
    subl $1 , %esi # decrement esi by 1
    addq $4, %rdi # increment rdi by 4
    jmp loop # jump to loop

    
end:
    movl %ecx , %eax # move ecx into eax
	ret # return from the function
