#include <iostream>
#include <vector>

std::vector<std::vector<int>> multiplyMatrices(
    const std::vector<std::vector<int>>& matA,
    const std::vector<std::vector<int>>& matB) {

    size_t rowsA = matA.size();
    size_t colsA = matA[0].size();
    size_t colsB = matB[0].size();

    // Resultant matrix with dimensions rowsA x colsB
    std::vector<std::vector<int>> result(rowsA, std::vector<int>(colsB, 0));

    // Perform matrix multiplication
    for (size_t i = 0; i < rowsA; ++i) {
        for (size_t j = 0; j < colsB; ++j) {
            for (size_t k = 0; k < colsA; ++k) {
                result[i][j] += matA[i][k] * matB[k][j];
            }
        }
    }

    return result;
}

void printMatrix(const std::vector<std::vector<int>>& matrix) {
    for (const auto& row : matrix) {
        for (int val : row) {
            std::cout << val << " ";
        }
        std::cout << std::endl;
    }
}

int main() {
    std::vector<std::vector<int>> matA = {
        {1, 2, 3},
        {4, 5, 6}
    };

    std::vector<std::vector<int>> matB = {
        {7, 8},
        {9, 10},
        {11, 12}
    };

    std::vector<std::vector<int>> result = multiplyMatrices(matA, matB);

    std::cout << "Resultant Matrix:\n";
    printMatrix(result);

    return 0;
}

/*
Resultant Matrix:
58 64
139 154
*/
