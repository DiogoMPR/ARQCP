#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

int main() {
    unsigned char vec[50];
    int num_sets = 0;

    populate(vec, 50, 20);

    for (int i = 0; i < 48; i++) {
        if (check(vec[i], vec[i + 1], vec[i + 2])) {
            num_sets++;
        }
    }

    printf("Number of sets of three consecutive elements satisfying the condition: %d\n", num_sets);

    return 0;
}

