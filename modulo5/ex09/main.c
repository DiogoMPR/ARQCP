#include <stdio.h>
#include "ex09.h"
#include <string.h>
#include <stdlib.h>



int main(void) {
    structB * s = calloc(1, sizeof(structB));
    structA a;
    a.x = 1;
    a.y = 2;

    s->a = a;
    s->b = &a;
    s->x = 3;
    s->z = 4;
    s->c = 5;
    s->y = 6;
    strcpy(s->e, "abc");

    short f1 = fun1(s);
    short f2 = fun2(s);
    short* f3 = fun3(s);
    short f4 = fun4(s);
    
    printf("f1 = %d\n", f1);
    
    printf("f2 = %d\n", f2);
    
    printf("f3 = %d\n", *f3);
    
    printf("f4 = %d\n", f4);

    free(s);

    return 0;
}
