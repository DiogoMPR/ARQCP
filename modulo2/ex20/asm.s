.section .data
	.global num # defines num as global
	
.section .text
	.global check_num # defines check_num as global

check_num:
	movswq num(%rip), %rax # place num in rax
	
	mov $2, %rcx # place 2 in rcx
	cqto
	idivq %rcx # divides rax by rcx, the result is stored in rax
	movswq num(%rip), %rax # place num in 
	cmpq $0, %rax # compares the value in rax with 0
	jge positive # jumps to positive
	jmp negative # if the number is negative, jumps to there
	
	positive:
	
	cmp $0, %rdx # compares the remainder with 0 to verify if the result is even
    je positive_Even   # If it's 0, jumps to positive_Even

    mov $4, %rax            # place 4 in rax
    jmp end

positive_Even:

    mov $3, %rax            # place 3 in rax
    jmp end                 

negative:

    cmp $0, %rdx            # Compares the value in rdx with 0
    je negative_Even    # If the result is 0, jumps to negative_even

    mov $2, %rax            # place 2 in rax
    jmp end                 

negative_Even:

    mov $1, %rax            # place 1 in rax

end:

ret   
