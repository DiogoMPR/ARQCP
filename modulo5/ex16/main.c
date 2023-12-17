#include <stdio.h>
#include <stdlib.h>
#include "asm.h"

int main(){
    group g;
    g.n_students = 4;
    unsigned short *grades = (unsigned short *)malloc(g.n_students * sizeof(unsigned short));
    g.individual_grades = grades;

    free(grades);
    return 0;
    }
    
