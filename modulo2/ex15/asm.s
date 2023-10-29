.section .data
	.global A 
	.global B
	.global C
	.global D

.section .text
.global compute 

compute:
	
	# Move the value of A to %rax 
	movslq A(%rip), %rax
	
	# Multiply A by B and store the result in %rax    
    imulq B(%rip), %rax      
    
    # Move the value of C to %rcx 
    movslq C(%rip), %rcx    
    
    # Multiply C by A and store the result in %rcx
    imulq A(%rip), %rcx      
    
    # Subtract the value of %rcx (C * A) from %rax
    subq %rcx, %rax          
    
    # Move the value of D to %rcx 
    movslq D(%rip), %rcx     
    
    # Divide the value in %rax by the value in %rcx (D)
    idivq %rcx               
    ret

