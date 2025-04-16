#include <stdio.h>
#include "matrix.h"

void scalar_multiply(int rows, int cols, int matrix[rows][cols], 
    int scalar) {
    // for-loop to handle the scalar multiplication logic 
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            matrix[i][j] *= scalar;
        }
    }
}

void transpose(int rows, int cols, int matrix[rows][cols], 
    int result[cols][rows]) {
    // for-loop to handle the transposition logic
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; +j) {
            result[j][i] = matrix[i][j];
        }
    }
    
}

void multiply_matrices(int r1, int c1, int mat1[r1][c1], 
    int r2, int c2, int mat2[r2][c2], int result[c1][c2]) {
    // for-loop to handle the matrix multiplication logic
    for (int i = 0; i < r1; ++i) {
        for (int j = 0; j < c2; ++j) {
            result[i][j] = 0;
            for(int k = 0; k < c1; ++k) {
                result[i][j] += mat1[i][k] * mat2[k][j];
            }
        }
    }
}

void add_matrices(int rows, int cols, int mat1[rows][cols], 
    int mat2[rows][cols], int result[rows][cols]) {
    // for-loop to hand matrix addition logic
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            result[i][j] = mat1[i][j] + mat2[i][j];
        }
    }
}

void print(int rows, int cols, int matrix[rows][cols]) {
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            printf("%d ", matrix[i][j]);
        }
        printf("\n")
    }
}