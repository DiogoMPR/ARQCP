.section .data
# (No data section in this snippet)

.section .text
    .global count_max # Declares 'count_max' as a global symbol

count_max:
    movl $0, %eax     # Initialize eax to 0, which will store the count of local maxima
    subl $2, %esi     # Subtract 2 from esi (num - size of the array)

loop:
    cmpl $0, %esi     # Compare the value in esi with 0 
    jle end           # Jump to 'end' if the condition is met (array size <= 2)

    movl (%rdi), %edx  # Copy the value pointed to by ptr (rdi) to edx
    addq $4, %rdi      # Increment rdi by four to make ptr point to the next integer
    movl (%rdi), %r8d  # Copy the value pointed to by ptr (rdi) to r8d

    cmpl %edx, %r8d    # Compare the values stored in edx and r8d
    jg check           # If the value in r8d is greater than the one in edx, jump to 'check'

    decl %esi          # Decrement esi by 1
    jmp loop           # Unconditionally jump to loop

check: 
    addq $4, %rdi      # Increment ptr by 4 to point to the next integer
    movl (%rdi), %r9d  # Copy the value pointed to by ptr in r9d

    cmpl %r8d, %r9d    # Compare the value in r8d with the one in r9d
    jl sum             # If the value in r8d is less than the one in r9d, jump to 'sum'

    subq $4, %rdi      # Decrement ptr by 4 to point to the previous element
    decl %esi          # Decrement esi by 1
    jmp loop           # Unconditionally jump to loop

sum:
    incl %eax          # Increment eax by 1
    subq $4, %rdi      # Decrement ptr by 4 to make it point to the previous integer
    decl %esi          # Decrement esi by 1
    jmp loop           # Unconditionally jump to loop

end:
    ret                # Return from the function
