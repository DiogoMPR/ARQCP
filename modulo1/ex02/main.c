#include <stdio.h>

double d = 5.25;
int i = 21;
char c = 'b';

double *ptrD = &d;
int *ptrI = &i;
char *ptrC = &c;

int main() {
    printf("Value of d variable: %f\n", *ptrD);
    printf("Value of i variable: %d\n", *ptrI);
    printf("Value of c variable: %c\n", *ptrC);

    printf("Address stored in ptrD variable: %p\n", (void *)ptrD);
    printf("Address stored in ptrI variable: %p\n", (void *)ptrI);
    printf("Address stored in ptrC variable: %p\n", (void *)ptrC);

    printf("Memory size of d variable: %zu\n", sizeof(d));
    printf("Memory size of i variable: %zu\n", sizeof(i));
    printf("Memory size of c variable: %zu\n", sizeof(c));
    printf("Memory size of *ptrD variable: %zu\n", sizeof(*ptrD));
    printf("Memory size of *ptrI variable: %zu\n", sizeof(*ptrI));
    printf("Memory size of *ptrC variable: %zu\n", sizeof(*ptrC));

    return 0;
}
