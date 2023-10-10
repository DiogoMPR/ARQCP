#include <stdio.h>
#include "get_array_statistics.h"

int main(){
	int arr[] = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3};
    int n = sizeof(arr) / sizeof(arr[0]);
    int minimum, maximum;
    float average;

    get_array_statistics(arr, n, &minimum, &maximum, &average);

    printf("Minimum: %d\n", minimum);
    printf("Maximum: %d\n", maximum);
    printf("Average: %.2f\n", average);

    return 0;
}
