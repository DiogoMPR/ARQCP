/* 
 * Implement a function int get_ascii_code(char c) that returns integer ASCII
 * code of the given character. For example, if the input is ’a’, the return will be 97.
 */

#include <stdio.h>
#include "getAsciiCode.h"

int main(){
	char c;
	int result;
	printf("Insert a character : ");
	scanf("%c", &c);
	
	result = getAsciiCode(c);
	
	printf("The character %c has %d code in the Ascii", c, result);
}
