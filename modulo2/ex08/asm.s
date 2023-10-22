.section .data
    .global op1
    .global op2
    
.section .bss
	.lcomm s1, 2   # Define s1 as a 2-byte variable
    .lcomm s2, 2   # Define s2 as a 2-byte variable

.section .text
    .global exchangeBytes
    .global crossSubBytes

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
   
crossSubBytes:
 # Subtracts two short values, short s1 and short s2, in a crossed fashion.
 # The function should subtracts to the most significant byte s1 the least significant byte of s2 and vice-versa
	movw s1(%rip), %ax # load s1 into ax
	movw s2(%rip), %bx # load s2 into cx
	
 # Extract the most significant byte of s1 and the least significant byte of s2
	movb %ah, %ch # copies the value in ah to ch (most significant byte of s1)
	movb %al, %cl # copies the value in al to cl (least significant byte of s1)
	movb %bh, %dh # copies the value in bh to dh (most significant byte of s2)
	movb %bl, %dl # copies the value in bl to dl (least significant byte of s2)
	
	subb %dl, %ch # subtracts lsb from s2 to msb from s1
	subb %cl, %dh # subtracts lsb from s1 to msb from s2
	
	movb %ch, %ah # copy the result from ch to ah
	movb %dh, %al # copy the result from dh to al
	
	ret
