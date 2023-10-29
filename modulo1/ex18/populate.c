#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "populate.h"

void populate(unsigned char *vec, int num, unsigned char limit){
    srand(time(NULL));
    
    for (int i = 0; i < num; i++) {
        vec[i] = (unsigned char)(rand() % (limit + 1));
    }
}
