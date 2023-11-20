.section .data

.section .text
	.global set_bit # defines 'set_bit' as global
	# arguments
	# %rdi -> pointer to the long integer (ptr)
	# %rsi -> bit position (pos)
	
set_bit:
	
	# prologue
	pushq %rbp
	movq %rsp, %rbp
	
	cmp $63, %rsi # compares pos with 63
	jg invalid_position # jumps if pos > 63
	
	cmp $0, %rsi # compares pos with 0
	jl invalid_position # jumps if pos < 0
	
	movq $1, %rax # place 1 in rax
	mov %rsi, %rcx       # Move the bit position to the count register %rcx
	shl %cl, %rax        # Shift 1 bit to the left by pos positions to create the mask
	
	test %rax, (%rdi) # Test if the bit is set in the pointed long integer
	jnz bit_is_set # jump if the bit is already set
	
	or %rax, (%rdi) # Bitwise OR to set the bit
	movq $1, %rax # set the return value to 1, meaning that the bit was altered
	
	
	# Epilogue
	
	movq %rbp, %rsp
    pop %rbp             
    
	ret
	
invalid_position:
    mov $0, %rax         # Set return value to 0 (bit position is invalid)
    
    # Epilogue
	
	movq %rbp, %rsp
    pop %rbp 
    
    ret
    
bit_is_set:
	movq $0, %rax         # Set return value to 0 (bit was already 1)
	
	# Epilogue
	
	movq %rbp, %rsp
    pop %rbp 
    
    ret
	
