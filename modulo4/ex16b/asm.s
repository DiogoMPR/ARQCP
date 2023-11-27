.section .text
.globl join_bits

join_bits:
	
	# prologue
	pushq %rbp
	movq %rsp, %rbp
	
    xorl %r8d, %r8d    # Initialize the counter in r8d as 0
    movsbl %dl, %edx   # transforms the byte in dl to an integer

    cmpl $63, %edx     # Comparaes pos (rdx) with 63 (end position)
    je end         # if the condition is matched jumps to 'end'

    incl %edx          # Increments pos, in order to avance to the next position
    movl $64, %r9d     # Place 64 in r9d
    subl %edx, %r9d    # Subtracts 64 to pos, the value is stored in r9d
    jmp loop 		   # jumps inconditionally to 'loop' 

loop:
    shrq $1, %rdi      # Shifts 'a' 1 bit to the right
    incl %r8d          # Increments the counter
    cmpl %r8d, %r9d    # Compares the counter with the value in r9d (64 - pos)
    je clear           # If the condition is matched, jumps to 'clear'
    jmp loop # Jumps inconditionally to 'loop'

clear:
    xorl %r8d, %r8d    # Clear the counter
    jmp second_loop    # Jumps inconditionally to 'second_loop'

second_loop:
    salq $1, %rsi      # Shifts 'b' 1 bit to the left
    incl %r8d          # Increments the counter
    cmpl %r8d, %edx    # Compares the counter with pos
    je final          # If the condition is matched, jumps to 'final'
    jmp second_loop  # jumps inconditional to 'second_loop'

final:
    xorq %rax, %rax    # Place 0 in rax
    orq %rsi, %rdi     # Makes a OR operation beetween 'a' and 'b' (result in a)
    movq %rdi, %rax    # Copies the value in rdi to rax
    
    movq %rbp, %rsp
	popq %rbp
    
    ret                

end:
    xorq %rax, %rax    # Place 0 in rax
    movq %rdi, %rax    # Copies the value in rdi to rax
 
	# epilogue
	movq %rbp, %rsp
	popq %rbp
    
    ret    
