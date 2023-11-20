.section .text
    .global set_bit # defines 'set_bit' as global
    .global set_2bits # defines 'set_2bits' as global
 
set_bit:
    # Arguments:
    # %rdi -> Pointer to the long integer (ptr)
    # %rsi -> Bit position (pos)
    
    # prologue
	pushq %rbp
	movq %rsp, %rbp

    cmp $63, %rsi        # Compare pos with 63
    jg  invalid_position # Jump if pos > 63

    cmp $0, %rsi         # Compare pos with 0
    jl  invalid_position # Jump if pos < 0

    mov $1, %rax         # Set 1 in register %rax
    mov %rsi, %rcx       # Move the bit position to the count register %rcx
    shl %cl, %rax        # Shift 1 left by pos positions to create the mask

    test %rax, (%rdi)

    jnz bit_already_set     # Jump to bit_already_set if the ZF flag is set

    or %rax, (%rdi)      # Bitwise OR to set the bit
    mov $1, %rax         # Set return value to 1 (bit was altered)

	# Epilogue
	
	movq %rbp, %rsp
    popq %rbp 
	
    ret

invalid_position:
    mov $0, %rax         # Set return value to 0 (bit position is invalid)
    
    # Epilogue
	
	movq %rbp, %rsp
    pop %rbp 
    
    ret

bit_already_set:
    mov $0, %rax         # Set return value to 0 (bit was already 1)
    
    # Epilogue
	
	movq %rbp, %rsp
    popq %rbp 
    
    ret

set_2bits:
    # Arguments:
    # %rdi -> Pointer to the long integer (ptr)
    # %rsi -> Bit position (pos)
    
    # prologue
	pushq %rbp
	movq %rsp, %rbp

    movq %rsi, %rdx         # Copy pos to %edx
    call set_bit           # Call set_bit to set the bit at position pos

    movl $63, %ecx          # Place 63 to %ecx
    subq %rsi, %rcx         # Subtract pos from 63
    movl %ecx, %esi         # Copy the result to %esi

    movl %edx, %ecx         # Copy the original value of %edx (pos) to %ecx
    call set_bit           # Call set_bit to set the complementary bit at position (63 - pos)

	# Epilogue
	
	movq %rbp, %rsp
    popq %rbp 
    
    ret
