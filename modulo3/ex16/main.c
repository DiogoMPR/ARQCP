# include <stdio.h>
# include "asm.h"

char array1[] = {'a', 'b' , 'c', 'd'};
char array2[] = {'e', 'f', 'g', 'h'};
char* ptr1 = array1;
char* ptr2 = array2;
int num = sizeof(array1)/sizeof(array1[0]);

int main(){
	
	printf("pre swap \n\n");
    printf("Array 1: ");
    for(int i = 0; i < num; i++){
        printf("%c ", array1[i]);
    }
    printf("\n");
    printf("Array 2: ");
    for(int i = 0; i < num; i++){
        printf("%c ", array2[i]);
    }
    printf("\n\n");

    swap(ptr1, ptr2, num);

    printf("pos swap \n\n");
    printf("Array 1: ");
    for(int i = 0; i < num; i++){
        printf("%c ", array1[i]);
    }
    printf("\n");
    printf("Array 2: ");
    for(int i = 0; i < num; i++){
        printf("%c ", array2[i]);
    }
    printf("\n\n");
    
	return 0;
}
