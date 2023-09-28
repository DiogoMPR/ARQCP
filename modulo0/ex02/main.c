# include <stdio.h>
# include "sum.h"

int main(){
	int a, b, result;
	printf("Please insert an integer value : ");
	scanf("%d",&a);
	printf("Insert another integer value : ");
	scanf("%d", &b);
	result = a+b;
	printf("The sum of %d and %d is %d!", a, b ,result);
}
