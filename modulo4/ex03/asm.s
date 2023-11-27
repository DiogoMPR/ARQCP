.section .data

.section .text

.global greatest

greatest:
    # Prologue
    pushq  %rbp                  # Save the current base pointer on the stack
    movq   %rsp, %rbp             # Set the base pointer to the current stack pointer

    movw   %di, %ax               # Move the value of the first argument (a) to the 16-bit register %ax.

    cmpw   %si, %ax               # Compare %ax (containing a) with the second argument (b).
    jl     bIsGreatest            # If a is less than b, jump to the label bIsGreatest.

    cmpw   %dx, %ax               # Compare %ax with the third argument (c).
    jl     cIsGreatest            # If a is less than c, jump to the label cIsGreatest.

    jmp    end                     # Jump to end if none of the above cases are true.

bIsGreatest:
    movw   %si, %ax               # Move the second argument (b) to %ax.

    cmpw   %dx, %ax               # Compare %ax with the third argument (c). If b is less than c, jump to cIsGreatest.
    jl     cIsGreatest            # If b is less than c, jump to cIsGreatest.

    jmp    end                     # Jump to end.

cIsGreatest:
    movw   %dx, %ax               # Move the third argument (c) to %ax.

end:
    # Epilogue
    movq   %rbp, %rsp             # Restore the stack pointer to the saved value.
    popq   %rbp                   # Restore the base pointer.
    retw                           # Return with the result in %ax.
