/* Implement the function int sum_digits(int n) that returns the sum of the given
 * number digits. Invoke the function developed in the exercise 2 to sum two digits.
 */
 
 #include <stdio.h>
 #include "sumDigits.h"
 
 int main(){
	 int number;
	 int result;
	 printf("Please insert an integer number! ");
	 scanf("%d", &number);
	 
	 result = sumDigits(number);
	 
	 printf("The sum of the digits in %d is %d", number, result);
	 
	 return 0;
 }
