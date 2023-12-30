.section .data
# (No data section in this snippet)

.section .text
.global update_grades    # void update_grades(Student *s, int *new_grades)
                         #                          rdi ,       rsi

# typedef struct {
#    short number;
#    char age;
#    int grades[5];
#    char name[60];
#    char address[100];
#} Student;

update_grades:
    # prologue
    pushq   %rbp           # save the base pointer
    movq    %rsp, %rbp     # set the base pointer to the stack pointer

    leaq    4(%rdi), %rcx  # rcx = grades - move the address of the first position of the grades array into rcx
    movq    $5, %rdx       # rdx = 4, will be used to iterate the grades array
    movq    $0, %rax       # rax = 0, will be used to store the value of each new grade (for each iteration)

updater:
    movl    (%rsi), %eax   # eax = *new_grades
    movl    %eax, (%rcx)   # *grades = eax

    addq    $4, %rsi       # new_grades++
    addq    $4, %rcx       # grades++

    decq    %rdx           # rdx--
    jnz     updater        # if rdx != 0, jump to updater

    # epilogue
    movq    %rbp, %rsp     # restore the stack pointer
    popq    %rbp           # restore the base pointer
    ret                    # return to the caller
