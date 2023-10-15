#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "populate.h"


void populate(unsigned char *vec, int num, unsigned char limit){
	// Seed para gerar números aleatórios
    srand(time(NULL));
    
    for (int i = 0; i < num; i++) {
        // Gere números aleatórios entre 0 e limit
        vec[i] = (unsigned char)(rand() % (limit + 1));
    }
}
