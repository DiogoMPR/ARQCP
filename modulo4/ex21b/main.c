#include <stdio.h>

#include "distance.h"

int main() {
    
    printf("\"ab\" : \"ab\" -> %d\n", distance("ab", "ab"));
    printf("\"ab\" : \"aa\" -> %d\n", distance("ab", "aa"));
    printf("\"ab\" : \"ba\" -> %d\n", distance("ab", "ba"));
    printf("\"ab\" : \"baa\" -> %d\n", distance("ab", "baa"));
    
    return 0;
}
