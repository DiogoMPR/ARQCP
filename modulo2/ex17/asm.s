#Implement a basic calculator with support for the following integer arithmetic operations: sum,
#subtraction, multiplication, division, modulus, powers of 2 and 3. Each of these operations should
#be implemented in a separate function in Assembly. The integer operands should be declared in C,
#while the computed result should be a 32-bit value declared in Assembly.


.section .data
    .global number1, number2, res

    
.section .text
    .global sum,
    .global subtraction
    .global multiplication
    .global division
    .global modulus
    .global power2
    .global power3 
    
sum:
    # Load the first operand into EAX
    movl number1(%rip), %eax
    # Add the second operand to EAX
    addl number2(%rip), %eax
    # Store the result in memory at the address of res
    movl %eax, res(%rip)
    ret

    # Function to perform subtraction
subtraction:
    # Load the first operand into EAX
    movl number1(%rip), %eax
    # Subtract the second operand from EAX
    subl number2(%rip), %eax
    # Store the result in memory at the address of res
    movl %eax, res(%rip)
    ret

    # Function to perform multiplication
multiplication:
    # Load the first operand into EAX
    movl number1(%rip), %eax
    # Load the second operand into ECX
    movl number2(%rip), %ecx
    # Multiply EAX by the value in ECX, result in EAX
    imul %ecx
    # Store the result in memory at the address of res
    movl %eax, res(%rip)
    ret

    # Function to perform division
division:
    # Load the first operand into EAX
    movl number1(%rip), %eax
    # Load the second operand into ECX
    movl number2(%rip), %ecx
    # Sign-extend EAX into EDX:EAX
    cdq
    # Divide the 64-bit value in EDX:EAX by ECX, result in EAX, remainder in EDX
    idiv %ecx
    # Store the result in memory at the address of res
    movl %eax, res(%rip)
    ret

    # Function to perform modulus
modulus:
    # Load the first operand into EAX
    movl number1(%rip), %eax
    # Load the second operand into R9D
    movl number2(%rip), %r9d
    # Sign-extend EAX into EDX:EAX
    cdq
    # Compare R9D to 0
    cmpl $0, %r9d
    # Jump to divisor_zero if R9D is 0
    je divisor_zero
    # Divide the 64-bit value in EDX:EAX by R9D, result in EAX, remainder in EDX
    idivl %r9d
    # Store the remainder in EDX into memory at the address of res
    movl %edx, res(%rip)
ret                            # Return from the function.

power2:
    movl number1(%rip), %eax    
    # Load the value at memory address number1 into EAX
    imull %eax                  
    # Square the value in EAX (multiply by itself)
    movl %eax, res(%rip)        
    # Store the result in EAX into memory at the address res
ret                             # Return from the function.

power3:
    movl number1(%rip), %eax    
    # Load the value at memory address number1 into EAX
    imul %eax                   
    # Cube the value in EAX (multiply by itself twice)
    movl number1(%rip), %edx    
    # Load the value at memory address number1 into EDX
    imul %edx                   
    # Multiply EDX by itself (number1 * number1 * number1)
    movl %eax, res(%rip)        
    # Store the result in EAX into memory at the address res
ret                             # Return from the function.

divisor_zero:
# Set the result to 0 in case of a division by zero
    movq $0, res(%rip)      
ret                         
