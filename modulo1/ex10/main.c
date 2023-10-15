#include <stdio.h>
#include "where_is.h"

int main(){
	char str[] = "arqcp";
    char c = 'c';

    char *result = where_is(str, c);
	
	if (result != NULL){
		printf("The character '%c' was found at position: %ld\n", c, result - str);
		}
	else{
		printf("The character '%c' was not found", c);
		}
	return 0;
}
