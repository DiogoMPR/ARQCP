#ifndef EX15_H
#define EX15_H
typedef struct stack {

    long* elements;     
    int current_size;   
    int max_size;       

} stack;

stack* stack_create(int capacity);
void stack_destroy(stack* s);
void stack_push(stack* s, long element);
long stack_pop(stack* s);
#endif
