#ifndef MATRIX_H
#define MATRIX_H

// member functions
void scalar_multiply(int rows, int cols, int matrix[rows][cols], 
    int scalar);
void transpose(int rows, int cols, int matrix[rows][cols], 
    int result[cols][rows]);
void multiply_matrices(int r1, int c1, int mat1[r1][c1], 
    int r2, int c2, int mat2[r2][c2], int result[r1][r2]);
void add_matrices(int rows, int cols, int mat1[rows][cols], 
    int mat2[rows][cols], int result[rows][cols]);
void print_matrix(int rows, int cols, int matrix[rows][cols]);

#endif