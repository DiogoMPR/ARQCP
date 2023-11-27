#include <stdio.h>

#include "asm.h"

int main() {
    int x = -1, y = 3, p1 = 0, p2 = 0;
    short z = -2, p3 = 0;
    char c = -1, p4 = 0;

    printf("x1=%d  x2=%d  x3=%hd  x4=%hhd\n", x,y,z,c);
    printf("proc()\n");
    
    proc(x, &p1, y, &p2, z, &p3, c, &p4);
    
    printf("p1=%d+%d=%d  p2=%d-%d=%d  p3=%hd+%d=%hd  p4=%hhd*3=%hhd\n", x,y,p1,y,x,p2,z,y,p3,c,p4);
    printf("x1=%d  x2=%d  x3=%hd  x4=%hhd\n", x,y,z,c);
    printf("call_proc()=%d\n", call_proc(x,y,z,c));
    printf("x1=%d  x2=%d  x3=%hd  x4=%hhd\n", x,y,z,c);
    
    return 0;
}
