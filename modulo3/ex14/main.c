#include <stdio.h>
#include "asm.h"

int array[] = {1,2,2,1,0};
int num = sizeof(array)/sizeof(array[0]);
int x = 2;
int *ptr = array;

int main(){
	int x_duplicated = exists(ptr, num, x);
	
	printf("The number %d is duplicated? (1-y, 0- n) = %d \n ", x, x_duplicated);
	
	printf("Number of different elements in the array = %d\n", vec_diff(ptr, num));
	
	return 0;
}
