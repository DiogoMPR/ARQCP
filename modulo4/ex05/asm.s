.section .data
	
.section .text

.global inc_and_cube			# int inc_and_cube(short *v1, int v2)

inc_and_cube:
    pushq   %rbp            # save the base pointer
    movq    %rsp, %rbp      # set the base pointer to the stack pointer

    incl    (%rdi)          # increment the value pointed by the first argument

    movl    %esi, %eax      # move the second argument to the eax
    movl    %esi, %ecx      # move the second argument to the ecx

    imull   %ecx      		# eax * eax = eax^2
    imull	%ecx			# eax^2 * ecx = eax^3

    movq    %rbp, %rsp      # restore the stack pointer
    popq    %rbp            # restore the base pointer
    ret                     # return to the caller
