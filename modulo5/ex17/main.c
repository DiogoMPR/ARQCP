#include <stdio.h>
#include <stdlib.h>
#include "ex17.h"

int main(void) {
    unionB ub = { .b = 'a' };
	structA a = { .a = { 1, 2, 3 }, .b = 'b', .c = 123456789, .d = 4, .e = 'e', .ub = ub };

  structA** matrix = malloc(4 * sizeof(structA*));
  for (int i = 0; i < 4; i++) {
    matrix[i] = malloc(3 * sizeof(structA));
  }

    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 3; j++) {
        matrix[i][j] = a;
        }
    }

    printf("Success\n");

  for (int i = 0; i < 4; i++) {
    free(*(matrix+i));
  }
  free(matrix);

  return 0;
}
