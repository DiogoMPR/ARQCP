#include <stdio.h>
#include "sum_even.h"

int main(){
	int array[] = {1, 2, 3, 4, 5};
	int n = sizeof(array) / sizeof(array[0]);
	
	int result = sum_even(array, n);
	
	printf("The sum of the even elements in the array is : %d\n", result);
	
	return 0;
}
