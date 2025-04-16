#include <stdio.h>
#include "matrix.h"

int main() {
    // base matrices
    int A[2][2] = {{6, 4}, {8, 3}};
    int B[2][3] = {{1, 2, 3}, {4, 5 ,6}};
    int C[2][3] = {{2, 4, 6}, {1, 3 ,5}};

    // matrices (to be transformed)
    // transposition of C
    int C_T[3][2];
    // 3 * B
    int three_B[2][3];
    // matrix product
    int product[2][2];
    // final matrix (D)
    int D[2][2];

    // for-loop (to implement three_B using base matrix B)
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 3; ++j) {
            three_B[i][j] = 3 * B[i][j];
        }
    }

    // test transposition
    transpose(2, 3, C, C_T);
    // test matrix multiplication
    multiply_matrices(2, 3, three_B, 3, 2, C_T, product);
    // test matrix addition
    add_matrices(2, 2, A, product, D);

    // print out the resulting matrix D
    printf("Final result of D (in C99):");
    print_matrix(2, 2, D);

    return 0;
}