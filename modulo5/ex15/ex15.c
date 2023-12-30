#include <stdio.h>
#include <stdlib.h>


typedef struct stack {
	long* elements;     
	int current_size;   
	int max_size;       
} stack;

stack* stack_create(int InitCapacity) {

		stack* newStack = malloc(sizeof(stack));
		newStack->elements = malloc(InitCapacity * sizeof(long));
		newStack->current_size = 0;
		newStack->max_size = InitCapacity;
		return newStack;
	
}


void stack_destroy(stack* s) {
	free(s->elements);
	free(s);
}

void stack_push(stack* s, long item) {
	// Check if the stack is full
	if (s->current_size == s->max_size) {
		// If so, double the stack's capacity
		s->max_size *= 2;

		// Store the pointer to the old array
		long* oldArray = s->elements;
		// Attempt to reallocate memory for the new array
		s->elements = realloc(s->elements, s->max_size * sizeof(long));
		// If the reallocation failed
		if (s->elements == NULL) {
			// Restore the old array
			s->elements = oldArray;
			// Print an error message
			printf("ERROR - Failed to reallocate memory for stack, push was not successful.\n");
			return;
		}
	}
	// Add the new item to the stack
	s->elements[s->current_size] = item;
	// Increment the current size
	s->current_size++;
}

// [POP] Pop the top element off the stack and return it
long stack_pop(stack* s) {
	// Check if the stack is empty
	if (s->current_size == 0) {
		// If so, return 0
		printf("ERROR - The Stack is empty\n");
		return 99999.9; // Return 99999 to indicate an error
	}
	else {
		// Decrement the current size
		s->current_size--;
		// Return the value at the top of the stack
		return s->elements[s->current_size];
	}
}
