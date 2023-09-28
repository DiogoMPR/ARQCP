# include <stdio.h>
# include "sum.h"

int main(){
	int a, b;
	printf("Please insert an integer value : ");
	scanf("%d",&a);
	printf("Insert another integer value : ");
	scanf("%d", &b);
	int result = sum(a,b);
	printf("The sum of %d and %d is %d!", a, b ,result);
}
