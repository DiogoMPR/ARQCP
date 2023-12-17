#include <stdio.h>
#include <string.h>
#include "ex07.h"

int main (void){
	
	s1 s;
    int vi = 1;
    char vc = 'a';
    int vj = 2;
    char vd = 'b';
    
    fill_s1(&s, vi, vc, vd, vj);
    
    printf("%d %c %c %d\n", s.i, s.c, s.d, s.j);
    
    return 0;
}
