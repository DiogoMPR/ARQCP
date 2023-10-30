.section .data
    .global i # define i as global
    .global j # define j as global

.section .text
    .global f4 # define f4 as global

f4:
    movl i(%rip), %eax		# place i in eax
    movl j(%rip), %ecx		# place j in ecx
    movl %eax, %edx			# place the value in eax in edx
    addl %ecx, %edx			# adds the values in ecx and edx, result in edx
    cmp $10, %edx			# compares the value in edx with 10
    jl less					# jump to the less condition if the value in edx is less than 10

    movl j(%rip), %eax		# place j in eax
    imull %eax				# multiplies the value in eax by the one in eax
    cltd					
    movl $3, %edx			# place 3 in edx
    idivl %esi				# divides the value in eax by the one in esi
    jmp end					# jump to end

less:
    imull %eax				# multiplies the value in eax by the one in eax
    imull $4, %eax			# multiplies the value in eax by 4

end:

    ret
