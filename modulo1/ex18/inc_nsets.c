#include <stdio.h>
#include "inc_nsets.h"


static int num_sets = 0;  // Variável global para armazenar o número de conjuntos

void inc_nsets() {
    num_sets++;
}

int get_num_sets() {
    return num_sets;
}
