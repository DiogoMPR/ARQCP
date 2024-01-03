#include <stdio.h>
#include "asm.h"


int main(void) {
    int array[] = {4,3,5,7,9,2,1,6,8,10};
    int length = 10;          //lenght of array
    int *read = &array[5];    //position in array
    int *write = &array[1];   //position in vec
    int num = 6;              //elements in vec
    int vec[num];

    int a = move_num_vec(array,length,read,write,num,vec);

     //  printf("The value of a is: %d\n", a);

     //IF VEC ISN´T EMPTY
    if (a == 1) {
        printf("Elements copied.\n");
        for (int i = 0; i < num; i++) {
            printf("%d ", vec[i]);
        }
        printf("\n");

    //IF VEC IS EMPTY
    } else {
        printf("Not enough elements to copy.\n");
    }
    return 0;
}

