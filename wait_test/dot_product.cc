template<typename T>
using InputChannel = __xls_channel<T, __xls_channel_dir_In>;
template<typename T>
using OutputChannel = __xls_channel<T, __xls_channel_dir_Out>;


class TestBlock {
public:
    InputChannel<int[10]> A;
    InputChannel<int[10]> B;
    OutputChannel<int> C;
    
    #pragma hls_top
    void Run() {
        int A_local[10];
        int B_local[10];
        int C_local;
        
		// Read matrices A and B from input channels
        A_local = A.read();
        B_local = B.read();
        
        C_local = dot_product(A_local, B_local);
        
        C.write(C_local);
    }

private:
    int dot_product(int A[10], int B[10]) {
        int result = 0;
        for (int i = 0; i < 10; i++)
            result += A[i] * B[i];
        return result;
    }
};
