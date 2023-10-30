.section .data
    .global i # defines i as global
    .global j # defines j as global

.section .text
    .global f3 # define f3 as global
    
f3:
    movl i(%rip), %eax		# place i in eax
    movl j(%rip), %ecx		# place j in ecx
    cmp %eax, %ecx			# compares the value in eax with the one in eax
    jl lower				# jump to the lower condition if the value in eax is lower than the one in the ecx
    addl %ecx, %eax			# adds the value in ecx to the one in eax
    movl %eax, %esi			# moves the value in eax to esi
    addl $2, %eax			# add 2 to the value in eax
    cmpl $0, %esi			# compares the value in esi with 0
    je zero					# jump to zero condition if the value in esi is equal to 0
    jmp end					# jump to end

lower:
    movl %eax, %edi			# place eax in edi
    imull %ecx				# multiplies the value in edi by ecx
    movl %eax, %esi			# place eax in esi
    incl %edi				# increments the value in edi by one
    movl %edi, %eax			# place the value in edi in eax
    cmpl $0, %esi			# compares the value in esi with 0
    je zero					# jump to zero condition if the value in esi is equal to zero
    jmp end					# jump to end
	
zero:
    movl $0, %eax			# place 0 in eax
    ret

end:
    cltd					
    idiv %esi				# divides the value in eax by the one in esi
    ret
