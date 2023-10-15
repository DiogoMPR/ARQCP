#include <stdio.h>
#include "capitalize2.h"
void capitalize2(char *str){
while (*str != '\0') {
        if (*str >= 'a' && *str <= 'z') {
            // Converte letras minúsculas para maiúsculas
            *str = *str - ('a' - 'A');
        }
        str++; // Move para o próximo caracter
    }
} 
