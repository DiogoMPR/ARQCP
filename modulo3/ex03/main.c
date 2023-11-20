#include <stdio.h>
#include "asm.h"

char chars[] = "Une u";
char chars2[50];
char *ptr1 = chars;
char *ptr2 = chars2;

int main(void) {
    str_copy_roman2(ptr1, ptr2);
    printf("Old: %s\n", chars);
    printf("New: %s\n", chars2);
    return 0;
}
