/*
 * Implement the function char get_ascii_char(int c) that returns the corresponding char given its integer ASCII code.
 */
 
 #include <stdio.h>
 #include "getAsciiChar.h"
 
int main(){
	 int c;
	 char result;
	 
	 printf("Please insert the Ascii code : ");
	 scanf("%d", &c);
	 
	 result = getAsciiChar(c);
	 
	 printf("The character associated to the number %d is %c", c, result);
	 
	 return 0;
 }
