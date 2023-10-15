#include <stdio.h> 
#include "where_is.h"

char* where_is(char *str, char c) {
    char *ptr;
    ptr = str;
    while (*ptr != '\0') {
        if (*ptr == c) {
            return ptr;
        }
        ptr++;
    }
    return NULL;
}
