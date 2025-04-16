#include "matrix.h"
using namespace std;

// constructor
Matrix::Matrix(int rows, int cols) {
    this->rows = rows;
    this->cols = cols;
    data.resize(rows, vector<int>(cols, 0));
}

// copy constructor
Matrix::Matrix(const vector<vector<int>> &values) {
    // set row, col, and data of elements of matrix
    rows = values.size();
    cols = values[0].size();
    data = values;
}

// scalarMultiply
Matrix Matrix::scalarMultiply(int scalar) const {
    Matrix result(rows, cols);
    for(int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; j++) {
            // multiply the matrix by the scalar
            result.data[i][j] = data[i][j] * scalar;
        }
    }
    return result;
}

// transpose
Matrix Matrix::transpose() const {
    Matrix result(cols, rows);
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            // swap value positions
            result.data[j][i] = data[i][j]
        }
    }
}

// multiply
Matrix Matrix::multiply(const Matrix &other) const {
    // invalid multiplication conditional
    if (cols != other.rows) {
        throw invalid_argument("Dimension multiplication mismatch.");
    }

    // for-loop (handle the matrix multiplication logic)
    
}