#include <stdio.h>
#include "sort_without_reps.h"

int main(){
	short src[] = {5,7,4,5,9,0,7};
	int n = sizeof(src)/sizeof(src[0]);
	short dest[n];
	
	int result = sort_without_reps(src, n, dest);
	
	printf("Sorted array in ascending order without duplicated elements : ");
	for(int i = 0; i < result; i++){
		printf("%d, ", dest[i]);
	}
	printf(" \n");
	
	return 0;
}
