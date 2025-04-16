#ifndef MATRIX_H
#define MATRIX_H

#include <iostream>
#include <vector>
using namespace std;

class Matrix {
    private:
    int rows;
    int cols;
    vector<vector<int>> data;
    
    public:
    // constructor
    Matrix(int rows, int cols);

    // constructor with initial data
    Matrix(const vector<vector<int>> &values);

    // helper matrix calculation functions
    Matrix scalarMultiply(int scalar) const;
    Matrix transpose() const;
    Matrix multiply(const Matrix &other);
    Matrix add(const Matrix &other);

    // basic print function
    void print() const;

    // getter functions
    int getRows() const {
        return rows;
    }
    int getCols() const {
        return cols;
    }
    const vector<vector<int>> &getData() const {
        return data;
    }
};

#endif