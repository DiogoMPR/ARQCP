#include <stdio.h>
#include "average.h"

int main(){
	int n1 = 10;
	int n2 = 20;
	int v[] = {1, 2, 3, 4, 5};
	
	int r1 = average(n1, n2);
	printf("The average of %d and %d is: %d\n", n1, n2, r1);
	
	int n = sizeof(v) / sizeof(v[0]);
	
	int r2 = average_array(v, n);
	
	printf("The average of the array is: %d\n", r2);
	
	return 0;
}
