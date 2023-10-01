/*
 * Implement the function int count_char(char str[], int c) that receives a string
 * and an integer ASCII character code and returns the number of times that such
 * character appears into the given string.
 */

#include <stdio.h>
#include "count_char.h"

int main(){
	char input[] = "Hello, World!";
    int characterToCount = (int)'l';
    
    int result = count_char(input, characterToCount);
    
    printf("The character '%c' appears %d times in the string.\n", (char)characterToCount, result);
	return 0;
}
