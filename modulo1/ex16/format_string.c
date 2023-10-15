#include "stdio.h"
#include "format_string.h"
#include <ctype.h>

void format_string (char *str){
	
int capitalize = 1;  // Indica se a próxima letra deve ser maiúscula

    while (*str) {
        // Verifique se o caractere atual é um espaço em branco
        if (*str == ' ') {
            capitalize = 1; // Próxima letra deve ser maiúscula
        } else {
            if (capitalize) {
                *str = toupper(*str); // Converte para maiúscula
                capitalize = 0;
            } else {
                *str = tolower(*str); // Converte para minúscula
            }
        }
        str++; // Avance para o próximo caractere
    }
}
