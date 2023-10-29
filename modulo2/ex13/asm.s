.section .data
	.global length1 
	.global length2
	.global height

.section .text
.global getArea 

# Function to calculate the area
# Input: length1, length2, height
# Output: Area = ((length1 + length2) * height) / 2
getArea:
	# Load length1 into ESI
	movswl length1(%rip), %esi
	# Load length2 into ECX
	movswl length2(%rip), %ecx
	# Load height into EAX
	movswl height(%rip), %eax

	# Calculate the sum of length1 and length2
	addl %ecx, %esi

	# Multiply the sum by the height
	mull %esi

	# Divide the result by 2 (right shift by 1)
	shrl $1, %edx
	xorl %edx, %edx

	# Store the result in EAX
	movl %eax, %edx

	# Return the result in EDX
	ret
