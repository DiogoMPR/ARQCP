.section .data
   .equ  START_ARRAY, 8     #offset of the first element of the array
.section .text

.global approved_semester       #int approved_semester(group *g) with g in (%rdi)

approved_semester:
#prologue
	pushq   %rbp					# save the base pointer
	movq    %rsp,%rbp				# set the base pointer to the stack pointer
    subq    $8, %rsp                #allocate 8 bytes for 1 variable (saver of *ptr)

    movw    (%rdi), %cx      #n_students in %cx
    movq    START_ARRAY(%rdi), %rdx    #n_modules in %dx (saves the address of the first element of the array)
    movl    $0, %eax         #countApproved = 0

loop:
    cmpw    $0, %cx              #if n_students == 0
    je      end                  #end
    movw    (%rdx), %si          #*ptr in %si
    movl    $0, %r8d             #count = 0 
    movl    $16, %r9d            #numOfBits = 16   
    decw    %cx                  #n_students--
    jmp     check_loop           #else check_loop

check_loop:
    cmpl    $0, %r9d             #if numOfBits == 0
    je      check_approve        #check_approve
    movw    %si, -8(%rbp)        #save *ptr
    andw    $1, -8(%rbp)         #*ptr & 1
    cmpw    $1, -8(%rbp)         #if *ptr & 1 == 1
    je      module_approved      #module_approved
    sarw    $1, %si              #else check next bit
    decl    %r9d                 #numOfBits--
    jmp     check_loop           #check_loop

check_approve:
    cmpl    $10, %r8d              #if count >= 10
    jge     approved_students      #approved_students
    addq    $2, %rdx               #ptr++
    jmp     loop

module_approved:
    incl    %r8d                 #count++
    sarw    $1, %si              #check next bit
    decl    %r9d                 #numOfBits--   
    jmp     check_loop           #check_loop

approved_students:
    incl    %eax                 #approvedStudents++
    addq    $2, %rdx             #ptr++
    jmp     loop                 #loop

end:
#epilogue
	movq    %rbp,%rsp
	popq    %rbp
    ret
