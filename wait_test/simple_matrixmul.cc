template<typename T>
using InputChannel = __xls_channel<T, __xls_channel_dir_In>;
template<typename T>
using OutputChannel = __xls_channel<T, __xls_channel_dir_Out>;


class TestBlock {
public:
    InputChannel<int[2][2]> A;
    InputChannel<int[2][2]> B;
    OutputChannel<int[2][2]> C;
    
    #pragma hls_top
    void Run() {
        int A_local[2][2];
        int B_local[2][2];
        int C_local[2][2];
        
		// Read matrices A and B from input channels
        A_local = A.read();
        B_local = B.read();
        
        MatrixMultiply(A_local, B_local, C_local);
        
        C.write(C_local);
    }

private:
    int dot_product(const int A[2][2], const int B[2][2], int C[2][2]) {
        for (int i = 0; i < 2; i++)
        	for (int j = 0; j < 2; j++)
				C[i][j] = 0;
		for (int i = 0; i < 2; i++)
			for (int j = 0; j < 2; j++)
				for(int k = 0; k < 2; k++)
					C[i][j] += A[i][k] * B[k][j]; 
    }
};
