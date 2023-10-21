.section .data
    .global op1
    .global op2

.section .text
    .global exchangeBytes

exchangeBytes:
    movw op1(%rip), %ax  # Load op1 into ax
    movw op2(%rip), %cx  # Load op2 into cx
    
    # Extract the most significant byte of op2
    movb %ch, %dl       # Copy the value in ch to dl
    
    # Extract the least significant byte of op1
    movb %al, %dh       # Copy the value in al to dh
    
    # Double the value of the least significant byte of op1
    addb %dh, %dh       # Double the value in dh
    
    # Combine the bytes to form the new short value
    movb %dl, %al       # Copy the value from dl to al (msb from op2)
    movb %dh, %ah       # Copy the value from dh to ah (lsb doubled from op1)
    
    ret
