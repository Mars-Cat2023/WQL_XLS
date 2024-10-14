#include <iostream>
using namespace std;

template <typename T, int RowsA, int ColsA, int ColsB>
void MatrixMultiply(const T A[RowsA][ColsA], const T B[ColsA][ColsB], T C[RowsA][ColsB]) {
    // Initialize the result matrix to zero
    for (int i = 0; i < RowsA; ++i) {
        for (int j = 0; j < ColsB; ++j) {
            C[i][j] = 0;
        }
    }

    // Perform the matrix multiplication
    for (int i = 0; i < RowsA; ++i) {
        for (int j = 0; j < ColsB; ++j) {
            for (int k = 0; k < ColsA; ++k) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

// Example usage in an XLS block
template <typename T>
class MatrixMultiplyBlock {
public:
    // Define input and output channels for matrices
//    xls::InputChannel<T[2][2]> A; // Input matrix A (2x2 for example)
//    xls::InputChannel<T[2][2]> B; // Input matrix B (2x2 for example)
//    xls::OutputChannel<T[2][2]> C; // Output matrix C (2x2 for example)

    #pragma hls_top
    void Run() {
        const T A_local[2][2] = {{3, 4}, {0, 1}}; // Initialize matrix A
        const T B_local[2][2] = {{2, 1}, {1, 2}}; // Initialize matrix B
        T C_local[2][2];    // Answer = {{10, 11}, {1, 2}};

        // Call the matrix multiplication function
        MatrixMultiply<T, 2, 2, 2>(A_local, B_local, C_local);

        // Write the resulting matrix C to the output channel
        for(int i = 0; i < 2; i++)
        {
			for(int j = 0; j < 2; j++)
	        	cout << C_local[i][j] << " ";
	        cout << endl;
		}
        
    }
};

int main() {
	MatrixMultiplyBlock<int>().Run();
	return 0;
}
