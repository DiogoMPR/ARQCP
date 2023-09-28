/*
 * Implement the function int mul(int a, int b) that returns the multiplication
 * of two integers. The result must be calculated by successive sums (for that invoke
 * the function developed in the exercise 2).
*/

#include <stdio.h>
#include "mul.h"

int main(){
	int a, b;
	printf("Please insert an integer value : ");
	scanf("%d", &a);
	printf("Please insert another integer value : ");
	scanf("%d", &b);
	
	int result = mul(a,b);
	
	printf("The product of %d and %d is %d!", a, b, result);
	return 0;
}
