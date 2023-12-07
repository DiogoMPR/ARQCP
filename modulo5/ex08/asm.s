.section .data
    .equ INT, 4
    .equ SHORT, 8

.section .text

	.global fill_s2 # void fill_s2(s2 *s, short vw[3], int vj, char vc[3]) with *s in (%rdi), vw in (%rsi), vj in %rdx and vc in (%rcx)
	
fill_s2:
	
	movq $0, %r9 # i = 0
	
short_loop:
	
	cmpq $3, %r9 # verifies if the counter(%r9) is equal to 3 
	je integer # jumps to 'integer' if the condition is matched
	movw (%rsi, %r9, 2), %ax # ax = vw[i]
	movw %ax, SHORT(%rdi, %r9, 2) # s2->w[i] = vw [i]
	incq %r9 # i++
	jmp short_loop
	
integer:
	
	movq  $0, %r9 # i = 0
	movl %edx, INT(%rdi, %r9, 4) # s->j = vj
	
char_loop:
	
	cmpq $3, %r9 # verifies if counter is equal to 3
	je end # jumps to 'end' condition
	movb (%rcx, %r9, 1), %al # al = vc[i]
	movb %al, (%rdi, %r9, 1) # s-> c[i] = vc[i]
	incq %r9 # i++
	jmp char_loop

end:
	
	ret
	
