#include "matrix.h"
using namespace std;

int main() {
    Matrix A({
        {6, 4},
        {8, 3}
    });
    Matrix B({
        {1, 2, 3},
        {4, 5 ,6}
    });
    Matrix C({
        {2, 4 ,6},
        {1, 3, 5}
    });
    
    // test matrix scaling
    Matrix B_scaled = B.scalarMultiply(3);

    // test matrix transposition
    Matrix C_transposed = C.transpose();

    // test matrix multiplication & addition
    Matrix product = B_scaled.multiply(C_transposed);
    Matrix D = A.add(product);

    // print results (using print function)
    cout << "Final result of D (in CPP):" << endl;
    D.print();

    return 0;
}