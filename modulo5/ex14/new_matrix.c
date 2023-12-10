# include <stdlib.h>

/*
 * 	Function short **new_matrix(int lines, int columns) that dynamically reserves a memory 
 * block to hold a matrix lines x columns.
 * 
 */
 
int **new_matrix(int lines, int columns){
	
	/*
	 * declares the pointer
	 */
	
	int **matrix = NULL;
	
	/*
	 * Allocate memory for the matrix lines
	 */
	
	matrix = (int **) malloc(lines * sizeof(int *));
	
	/*
	 * Allocate memory for the matrix columns
	 */
	
	for(int i = 0; i < lines ; i++){
		*(matrix + i) = (int *) malloc (columns * sizeof(int));
	}
	
	return matrix;
}
