.section .data
.global vec
.global num

.section .text
.global sort_array              # void sort_array(int* vec, int num);

sort_array:
    movl $0, %r8d               # Initialize a counter to 0

firstLoop:
    cmp $0, %esi                # If the number of elements is 0
    je end                      # Jump to end

    decl %esi                   # Decrement num
    movl %esi, %r8d             # Move esi to the counter
    jmp secondLoop              # Jump to secondLoop

secondLoop:
    cmp $0, %r8d                # Compare r8d to 0
    je altEnd                   # If r8d is 0, jump to altEnd

    movl (%rdi), %ecx           # Move the value at rdi to ecx
    movl %ecx, %r9d             # Move ecx to r9d

    addq $4, %rdi               # Add 4 to rdi
    movl (%rdi), %ecx           # Move the value at rdi to ecx
    movl %ecx, %r10d            # Move ecx to r10d

    cmp %r9d, %r10d             # Compare r9d to r10d
    jl swap                     # If r9d > r10d, jump to swap

    decl %r8d                   # Decrement r8d
    jmp secondLoop              # Jump to secondLoop

swap:
    subq $4, %rdi               # Subtract 4 from rdi
    movl %r10d, (%rdi)          # Move r10d to the value at rdi

    addq $4, %rdi               # Add 4 to rdi
    movl %r9d, (%rdi)           # Move r9d to the value at rdi

    decl %r8d                   # Decrement r8d
    jmp secondLoop              # Jump to secondLoop

reset:
    cmp $0, %r8d                # Compare r8d to 0
    je firstLoop                # If r8d is 0, jump to firstLoop

    subq $4, %rdi               # Subtract 4 from rdi
    decl %r8d                   # Decrement r8d
    jmp reset                   # Jump to reset loop

altEnd:
    movl %esi, %r8d             # Move esi to the counter
    jmp reset                   # Jump to reset

end:
    ret
