#include <stdlib.h>
short **new_matrix(int lines, int columns){

    short **matrix = (short **)malloc(lines * sizeof(int *));

    for(int i = 0; i < lines; i++){
        *(matrix+i) = (short *)malloc(columns * sizeof(int));
    }
    
    return matrix;
}
