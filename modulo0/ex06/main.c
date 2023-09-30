/*
 * Implement the function int get_greater_digit(int n) that returns the greater
 * digit in a given integer number. Invoke the function developed in the exercise 5
 * to compare two digits.
 */
 
 #include <stdio.h>
 #include "getGreaterDigit.h"
 
 int main(){
	 int number;
	 
	 printf("Please insert an integer number : ");
	 scanf("%d", &number);
	 
	 int result = getGreaterDigit(number);
	 
	 printf("The greater digit in %d is: %d\n", number, result);
	 
	 return 0;
 }

