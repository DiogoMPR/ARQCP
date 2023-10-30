# include <stdio.h>
# include "asm.h"

	int num = 4;
	int vec[5] = {3,5,7,8,9};
	int *ptr = vec;
	
int main(void){
	vec_add_three();
	for(int i = 0; i <= num; i++){
		printf("%d, ", *(vec+i));
	}
	printf("\n");
	return 0;
}
