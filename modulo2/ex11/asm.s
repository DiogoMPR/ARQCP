.section .data
    .global op1
    .global op2

.section .text
    .global verify_flags

verify_flags:
    # Load the value of op1 from memory into register CX
    movw op1(%rip), %cx
    
    # Load the value of op2 from memory into register DX
    movw op2(%rip), %dx
    
    # Add the values in registers DX and CX, storing the result in CX
    addw %dx, %cx
    
    # Check if the carry flag is set (CF). If set, jump to carry_detected.
    jc carry_detected
    
    # Check if the overflow flag is set (OF). If set, jump to overflow_detected.
    jo overflow_detected
    
    # If neither carry nor overflow flags are set, set AL to 0.
    movb $0, %al
    jmp end

carry_detected:
    # Set AL to 1 to indicate carry detected.
    movb $1, %al
    jmp end

overflow_detected:
    # Set AL to 1 to indicate overflow detected.

end:
    ret
