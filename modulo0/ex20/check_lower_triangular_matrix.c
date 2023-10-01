int check_lower_triangular_matrix(int mat[][5], int lin, int col) {
	
    for (int i = 0; i < lin; i++) {
        for (int j = i + 1; j < col; j++) {
            // If any element above the main diagonal is non-zero, it's not lower triangular.
            if (mat[i][j] != 0) {
                return 0;
            }
        }
    }
    return 1; // If there's no non-zero elements above the main diagonal, it's lower triangular.
}
