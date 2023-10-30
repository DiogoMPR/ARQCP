 .section .data
  .global atual
  .global final

.section .text
  .global needed_time          

needed_time:
    # Load the values of the atual and final variables into cx and ax
    movsbw atual(%rip), %cx
    movsbw final(%rip), %ax

    # Compare the values of atual and final
    cmp %ax, %cx

    # If they are equal, jump to the "equal" section
    je equal

    # If ax is less than cx, jump to the "atual_less" section
    jl atual_less

atual_greater:
    # ax is greater than cx, so subtract ax from cx
    subw %ax, %cx

    # Multiply cx by 240
    imulw $240, %cx

    # Move the result to ax
    movw %cx, %ax

    # Jump to the end
    jmp end

atual_less:
    # ax is less than cx, so subtract cx from ax
    subw %cx, %ax

    # Multiply ax by 180
    imulw $180, %ax

    # Jump to the end
    jmp end

equal:
    # If the values are equal, set ax to 0
    movw $0, %ax

end:
    # Return the value in ax (contains the needed time)
    ret                       
