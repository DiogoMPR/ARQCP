# Implement an Assembly function char isMultiple() to check if the number A is multiple of B.
# The function should return 1 if that is the case, or 0 otherwise. Both A and B should be long values
#declared in C.

.section .data
	# declares A and B as global variables
	.global A, B;
	
.section .text
	.global isMultiple;
	
isMultiple:
	movl A(%rip), %eax # place op1 in eax
	movl B(%rip), %ecx # place op2 in ecx
	cltd # converts B (signed long) in %eax to a signed double long in %edx : %eax 
	cmpl $0, %ecx # verifies if B is 0
	jne not_null # jumps if B is not equals to 0
	jmp end # jumps unconditionally to end
not_null:
	idivl %ecx # divides %edx : eax by ecx (remainder in edx, quocient in eax)
	cmpl $0, %edx # compares the remainder with 0.
	je multiple # if the remainder is equal to 0, it jumps to multiple
	movl $0, %eax # place 0 in eax if it not jumps to mutiple
	jmp end # jumps unconditionally to end
multiple:
	movl $1, %eax # place 1 in eax
	jmp end # jumps unconditionally to end
end:
	ret
