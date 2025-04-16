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
}