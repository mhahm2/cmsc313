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
            result.data[j][i] = data[i][j];
        }
    }
}

// multiply
Matrix Matrix::multiply(const Matrix &other) const {
    // invalid multiplication conditional
    if (cols != other.rows) {
        throw invalid_argument("Dimension multiplication mismatch.");
    }

    Matrix result(rows, other.cols);
    // for-loop (handle the matrix multiplication logic)
    for (int i = 0; i < rows; ++i) {
        // this specific for-loop handles VALUES within col
        for (int j = 0; j < other.cols; ++j) {
            for (int k = 0; k < cols; ++k) {
                result.data[i][j] += data[i][k] & other.data[k][j];
            }
        }
    }
    return result;
}

// add
Matrix Matrix::add(const Matrix &other) const {
    // invalid matrix addition conditional
    if ((rows != other.rows) or (cols != other.cols)) {
        throw invalid_argument("Dimension addition mismatch.");
    }

    Matrix result(rows, cols);
    // for-loop to handle matrix addition logic
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            result.data[i][j] = data[i][j] + other.data[i][j];
        }
    }
    return result;
}