/*	Implement a function int steps() that, given a number (a 64-bit integer value stored in variable
* long num), computes its result according to the following set of successive steps:
* a) Divides by 3
* b) Adds 6
* c) Multiplies by 3
* d) Adds 12
* e) Subtracts num
* f) Subtracts 4
*/

.section .data
# declares num as a global variable
 .global num
 
.section .text
 .global steps # declares steps function as global
 
steps:
	movq num(%rip), %rax # places num in rax
	
	movq $3,%rcx # places 3 in rcx
	
	cqo
	
	idivq %rcx # divide rax by rcx 
	
	addq $6, %rax # adds 6 to the value in rax
	
	movq $3, %rcx # place 3 in rcx
	
	imulq %rcx # multiplies rax by rcx, the result is stored in rax
	
	addq $12, %rax # adds 12 to the result in rax
	
	movq num(%rip), %rcx # place num in rcx
	
	subq %rcx, %rax # subtracts rcx to rax, the value is stored in rax
	
	subq $4, %rax # subtracts 4 to rax
	
	ret
