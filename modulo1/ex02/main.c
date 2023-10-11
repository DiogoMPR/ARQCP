#include <stdio.h>

int main() {
    double my_double = 12.34;
    int my_int = 42;
    char my_char = 'X';

    double *ptr_double = &my_double;
    int *ptr_int = &my_int;

    printf("Double Value: %f\n", my_double);
    printf("Double Address: %p\n", (void *)ptr_double);
    printf("Double Size (bytes): %lu\n", sizeof(my_double));

    printf("Int Value: %d\n", my_int);
    printf("Int Address: %p\n", (void *)ptr_int);
    printf("Int Size (bytes): %lu\n", sizeof(my_int));

    printf("Char Value: %c\n", my_char);
    printf("Char Size (bytes): %lu\n", sizeof(my_char));

    return 0;
}
