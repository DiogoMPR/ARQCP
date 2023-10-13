#include <stdio.h>
#include "sum_odd.h"

int main(){
	int array[] = {6, 1, 3, 6, 8, 9, 12};
	int result = sum_odd(array);
	printf("The sum of the odd elements in the array : %d\n", result); // 13
	return 0; 
}
