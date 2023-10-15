#include <stdio.h>
#include "count_words.h"

int main(){

char str[] = " the numBEr must be saved";
int x = count_words(str);

printf("Number of words in the string: %d\n", x); // 5

}
