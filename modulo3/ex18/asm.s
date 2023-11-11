.section .data

.section .text
	.global sort_without_reps # defines 'sort_without_reps' as global
	
sort_without_reps:
	leaq (%rsi), %r8 # load ptrdest into r8
	movl $0, %r9d # place 0 in r9d
	
move_loop:
	cmpl $0, %edx # check if the array src is empty (num is in edx)
	je end_move_loop # jumps to 'end_move_loop' if the condition is matched
	movw (%rdi), %cx # copies the value pointed by ptrsrc (in rdi) to cx
	call check_doubles # calls the 'check double' code block
	cmpl $0, %eax # checks if the value in eax is 0
	je move_no_doubles # jumps to 'move_no_doubles' 
	addq $2, %rdi # adds 2 to the rdi, in order to make ptrsrc point to the next array element
	decl %edx # decrement edx by one (num)
	jmp move_loop # jumps inconditionally to 'move loop'

move_no_doubles:
	movw %cx, (%rsi) # copies the value in cx to rsi (adds the value pointed by ptrsrc to the dest array)
	addq $2, %rdi # adds 2 to rdi, in order to make ptrsrc point the next element
	addq $2, %rsi # adds 2 to rsi, in order to make ptrdest point the next element
	decl %edx # decrement num by one
	incl %r9d # increment r9d by one
	jmp move_loop
	
end_move_loop:
	movl %r9d, %eax # copies the value in r9d to eax
	jmp sort # jumps inconditionally to 'sort'
	
check_doubles:
	leaq (%r8), %r10 # load ptrdest into r10
	movl %r9d, %r11d # copies the value in r9d to r11d
	movl $0, %eax # place 0 in eax
	
check_doubles_loop:
	cmpl $0, %r11d # checks if the value in r11d is 0
	je end # if the value in r11d is 0, jumps to 'end' 
	cmpw (%r10), %cx # compares the value in r10 with the value pointed by ptrdest
	je doubled # jumps to 'doubled' if the condition is matched
	addq $2, %r10 # increments ptrdest by to, in order to make it point the next element
	decl %r11d # decrement r11d by 1
	jmp check_doubles_loop
	
doubled:
	movl $1, %eax # place 1 in eax
	jmp end

sort:
	leaq (%r8), %rdi # load ptrdest into rdi
	movl %eax, %edx # copies the value in eax to edx
	movl $0, %r10d # place 0 in r10d
	
loop:
	cmpl $0, %edx # checks if the the value in edx (num - size of the src array) is 0
	je end
	decl %edx # decrement edx by 1
	movl %edx, %r10d # copies the value in edx to r10d
	jmp second_loop
	
second_loop:
	cmpl $0, %r10d # checks if the value in r10d is 0
	je end_loop # jumps to 'end_loop' if the condition is matched
	movw (%rdi), %cx # copies the value pointed by ptrdest in cx
	movw %cx, %r9w # copies the value in cx to r9w
	addq $2, %rdi # increments ptrdest by 2, in order to point to the next element
	movw (%rdi), %cx # copies the value pointed by ptrdest in cx
	movw %cx, %r11w # copies the value in cx to r11w
	cmpw %r9w, %r11w # compares the value of r9w with r11w
	jl change # if r9w is less than r11w, jump to change
	decl %r10d # decrement r10d by 1
	jmp second_loop

change:
	subq $2, %rdi # decrement ptrdest by 2
	movw %r11w, (%rdi) # copies the value in r11w to be pointed by ptrdest
	addq $2, %rdi # increments ptrdest by 2, in order to point to the next short
	movw %r9w, (%rdi) # copies the value in r9w to be pointed by ptrdest
	decl %r10d # decrement r10d by 1
	jmp second_loop

end_loop:
	movl %edx, %r10d # copies the value in edx to r10d
	jmp reset
		
reset:
	cmp $0, %r10d # compares the value in r10d with 0
	je loop # jumps to 'loop' if the condition is matched
	subq $2, %rdi # decrement ptrdest by 2
	decl %r10d # decrement r10d by 1
	jmp reset
	
end:
	ret
