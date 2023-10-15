#include <stdio.h>
#include "count_words.h"

int count_words(char *str){
	int count = 0;
    int in_word = 0;  // Flag para indicar se estamos dentro de uma palavra

    while (*str) {
        // Se o caractere atual não for um espaço em branco
        if (*str != ' ') {
            // Se não estamos dentro de uma palavra, incrementamos o contador
            if (!in_word) {
                count++;
                in_word = 1;  // Marcamos que estamos dentro de uma palavra
            }
        } else {
            in_word = 0;  // Marca o fim da palavra
        }
        str++;  // Avançamos para o próximo caractere na string
    }

    return count;
}
