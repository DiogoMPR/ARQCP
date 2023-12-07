# include <stdio.h>
# include "asm.h"

int main(void) {
    s2 s;
    short vw[3] = {1, 2, 3};
    int vj = 42;  // Example value for vj
    char vc[3] = {'a', 'b', 'c'};

    // Call the assembly function to fill the s2 structure
    fill_s2(&s, vw, vj, vc);

    // Print the contents of the filled s2 structure
    printf("s.w[0]: %d\n", s.w[0]);
    printf("s.w[1]: %d\n", s.w[1]);
    printf("s.w[2]: %d\n", s.w[2]);
    printf("s.j: %d\n", s.j);
    printf("s.c[0]: %c\n", s.c[0]);
    printf("s.c[1]: %c\n", s.c[1]);
    printf("s.c[2]: %c\n", s.c[2]);

    return 0;
}
