#include <stdio.h>
#include "asm.h"

short length1;
short length2;
short height;

int main(void){
	
printf("Valor length 1:");
    scanf("%hd", &length1);

    printf("Valor length 2:");
    scanf("%hd", &length2); 

    printf("Valor height:");
    scanf(" %hd", &height); 

	int area = getArea();
    printf("Area = %d\n", area);


	return 0;
	}
