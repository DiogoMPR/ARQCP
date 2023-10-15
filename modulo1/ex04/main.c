#include <stdio.h>
#include "copy_vec.h"

int main(){
    int arr1[5] = {1, 2, 3, 4, 5};
    int arr2[5];

    copy_vec(arr1, 5, arr2);

    for (int i = 0; i < 5; i++) {
        printf("%d ", arr2[i]);
    }

    return 0;
}
