.section .data

.section .text
	.global extract_token # defines 'exctract_token' as global
	# parameters:
	# char* input in rdi
	# char* token in rsi
	# int* output in rdx
	
extract_token:

	# prologue
	pushq %rbp
	movq %rsp, %rbp

	movq %rdi, %r8          # Place *input in r8
    movq %rsi, %r9          # Place *token in r9
    movq %rdx, %rcx			# Place *output in rcx

	movq (%rcx), %rax       # Place *output in rax

compare_strings:
	cmpb $0, (%r8)          # verifies if *input is null
	je end_of_string        # if the condition is matched, jumps to 'end_of_string'
    movzbq (%r8), %rax      # Move the actual byte from *input to %rax
    movzbq (%r9), %rcx      # Move the actual byte from *output to %rcx
    cmp %cl, %al            # Compares the bytes pointed by *input and *output
    je equals               # if they are equal, jumps to 'equals'

    incq %r8                # increments *input in order to point to the next value
    movq %rsi, %r9				# restores the initial value of r9
    jmp compare_strings     # jumps inconditionally to 'compare_strings'

equals:
    incq %r8                # *input points to the next value
    incq %r9                # *token points to the next value
    cmpb $0, (%r9)          # verifies if the end of *token is reached
    je token_end         # jumps to 'token_end' if the condition is matched
    jmp compare_strings     # jumps inconditionally to 'compare_strings'

token_end:
    xor %ecx, %ecx          # clears ecx register

convert_value:
    movb (%r8), %al         # Place the *input in al
    cmpb $0, %al			# Verifies if the value in al is null
    je done					# jumps to 'done' if the condition is matched

    cmpb $65 , %al			# Verifies if the character in al (*input) is not a number by the ascii code
    jge letter_find			# jumps to 'letter_find' if it's matched

    cmpb $'#', %al          # verifies if the character in al (*input) is '#'
    je done                 # jumps to 'done'
    cmpb $'.', %al          # verifies if the character in al (*input) is '.'
    je decimal        # jumps to 'decimal' if it's equal

	movzbl %al, %eax		# place *input in eax
    subl $'0', %eax          # converts the atual character to an integer
    imull $10, %ecx         # Multiplies the value in *output by 10
    addl %eax, %ecx         # Adds the value in *input to the one in *output
    incq %r8                # makes *input point to the next value
    jmp convert_value       # jumps to 'convert_value'

decimal:
    incq %r8                # increments *input in order to jump '.'
    jmp convert_value       # jumps to 'convert_value'

done:
    movl %ecx, (%rdx)       # Place *output in rdx

    #epilogue
	movq %rbp, %rsp
	popq %rbp

    ret                     # Retorna da função

end_of_string:

	#epilogue
	movq %rbp, %rsp
	popq %rbp

	ret

letter_find:
	movq $0, %rdx
	
	#epilogue
	movq %rbp, %rsp
	popq %rbp
	
	ret
