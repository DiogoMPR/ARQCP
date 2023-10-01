/*
 * Implement the function int count_value(int vec[], int n, int value) that
 * counts the number of times that a value appears in an array vec with n elements
 */

#include <stdio.h>
#include "count_value.h"

int main(){
	int vec[] = {1,2,2,3,4,2,5};
	int n = sizeof(vec) / sizeof(vec[0]);
	int value = 2;
	int result = count_value(vec, n, value);
	printf("The number %d appears %d times in the array", value, result); // 3
	return 0;
}
