.section .data

.section .text 
	.global enqueue_value # defines 'enqueue_value' as global
	# parameters:
	# int* array in rdi
	# int length in esi
	# int* read in rdx
	# int* write in rcx
	# int value in r8d

enqueue_value:

	# prologue
    pushq %rbp             
    movq %rsp, %rbp        

    movl (%rcx), %r10d     # Copies the value in rcx and places it in r10d (write)
    imull $4, %r10d        # get the offset of r10d

    movslq %r10d, %r10  # extend the signal from r10d to r10
    addq %r10, %rdi # add offset to array (expands the array)
    movl %r8d, (%rdi) # place the value in the array

    addl $1, (%rcx) # increments the *write by one

    pushq %rdx # stores the value of *read in the stack
    movl (%rcx), %eax             # place *write in eax
    cltd                          # sign extend the value in eax
    idivl %esi                    # divide by the value in eax(*write) by the length of the array
    movl %edx, (%rcx)             # store the remainder of the division in *write

    pop %rdx                      # restore the initial value of *read

    movl (%rdx), %r10d             # copies *read to r9d
    cmp (%rcx), %r10d              # compares *read to *write
    je empty              # if the condition is matched, jumps to 'empty'

    jmp end                       # jumps inconditionally to end

empty:

    addl $1, (%rdx)               # increment *read in order to point to the next value in the array

    pushq %rdx                    # save the value of *read in the stack

    movl (%rdx), %r9d             # place *read into r9d
    cltd                          # sign extend the value in eax
    idivl %esi                    # divides the value in eax by length
    movl %edx, %r9d               # store the remainder value in r9d

    popq %rdx                     # restore *read initial value

    movl %r9d, (%rdx)             # copies the value in r9d to rdx (remainder)

end:
	
	# epilogue
    mov %rbp, %rsp        
    pop %rbp     
             
    ret