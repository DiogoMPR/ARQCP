/*
 * Implement the function int count_words(char str[]) that receives a string and
 * returns the number of words in the string. Consider that words are separated by
 * a single space.
 */
 
#include <stdio.h>
#include "count_words.h"

int main(){
    char str[] = "Hello, world!";
    int result = count_words(str);

    printf("Number of words in the string: %d\n", result);

	return 0;
}
