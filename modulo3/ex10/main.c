# include <stdio.h>
# include "asm.h"
# define num 80

char str1[] = "abcd";
char str2[] = "efgh";
char str3[num];

char* ptr1 = str1;
char* ptr2 = str2;
char* ptr3 = str3;

int main (void){
	str_cat(ptr1, ptr2, ptr3);
	
	printf("\nstr3: %s \n", str3);
	
	return 0;
}
