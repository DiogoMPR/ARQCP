.section .text
	.global mixed_sum
	.global join_bits
	
mixed_sum:
	# Initializes rax and r9 as zero
	xorq %rax,%rax
	xorq %r9,%r9
	
	# calls 'join_bits' function
	call join_bits
	
	# moves the result from rax to r9
	movq %rax,%r9
	
	# Changes the registers of the values 'a' and 'b'
	movq %rdi,%r8 # 'a' to r8
	movq %rsi,%rdi # 'b' to rdi
	movq %r8,%rsi # 'a' to rsi
	
	# Initializes rax and r9 as zero
	xorq %rax,%rax
	xorq %r8,%r8
	
	# calls 'join_bits' function
	call join_bits
	
	# Adds the result to rax
	addq %r9,%rax
	ret
		
join_bits:
	# Prologue
	pushq %rcx
	pushq %rsi
	pushq %rdx
	pushq %r9
	pushq %rdi
	pushq %r10
	pushq %r8

	# Initializes ecx and r10d as zero
	xorl %ecx,%ecx
	xorl %r10d,%r10d
	
	movsbl %dl, %edx   # transforms the byte in dl to an integer

    cmpl $63, %edx     # Comparaes pos (rdx) with 63 (end position)
    jle end         # if the condition is matched jumps to 'end'

    addl $1, %edx          # Increments pos, in order to avance to the next position
    movl $64, %r11d     # Place 64 in r11d
    subl %edx, %r11d    # Subtracts 64 to pos, the value is stored in r11d
    jmp loop 		   # jumps inconditionally to 'loop' 

loop:
    shrq $1, %rdi      # Shifts 'a' 1 bit to the right
    incl %ecx          # Increments the counter
    cmpl %ecx, %r9d    # Compares the counter with the value in r9d (64 - pos)
    je clear           # If the condition is matched, jumps to 'clear'
    jmp loop # Jumps inconditionally to 'loop'

clear:
    xorl %ecx, %ecx    # Clear the counter
    jmp second_loop    # Jumps inconditionally to 'second_loop'

second_loop:
    shlq $1, %rsi      # Shifts 'b' 1 bit to the left
    incl %ecx          # Increments the counter
    cmpl %ecx, %edx    # Compares the counter with pos
    je final          # If the condition is matched, jumps to 'final'
    jmp second_loop  # jumps inconditional to 'second_loop'

final:
    xorq %rax, %rax    # Place 0 in rax
    orq %rsi, %rdi     # Makes a OR operation beetween 'a' and 'b' (result in a)
    movq %rdi, %rax    # Copies the value in rdi to rax
    
    #epilogue
    
    popq %r8
	popq %r10
	popq %rdi
	popq %r9
	popq %rdx
	popq %rsi
	popq %rcx
    movq %rbp, %rsp
	popq %rbp
    
    ret                

end:
    xorq %rax, %rax    # Place 0 in rax
    movq %rdi, %rax    # Copies the value in rdi to rax
 
	# epilogue
	popq %r8
	popq %r10
	popq %rdi
	popq %r9
	popq %rdx
	popq %rsi
	popq %rcx
    
    ret    

