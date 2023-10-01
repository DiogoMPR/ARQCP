/*
 * Implement two functions, int integer_part(char x[]) and int fractional_part(char
 * x[]), both receiving a string representing a real number, and one that returns an
 * integer referring to the integer part of the received number and another that returns an integer representing the fractional part.
 */
 
 #include <stdio.h>
 #include "integer_part.h"
 #include "fractional_part.h"
 

int main(){
	char input[] = "123.456"; // Example input string

    int intPart = integer_part(input);
    int fracPart = fractional_part(input);

    printf("Integer Part: %d\n", intPart);
    printf("Fractional Part: %d\n", fracPart);

    return 0;
}
