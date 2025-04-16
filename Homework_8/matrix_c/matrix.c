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