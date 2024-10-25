template<typename T>
using InputChannel = __xls_channel<T, __xls_channel_dir_In>;
template<typename T>
using OutputChannel = __xls_channel<T, __xls_channel_dir_Out>;

class TestBlock {
public:
    InputChannel<int> A;
    InputChannel<int> B;
    OutputChannel<int> C;
    
    #pragma hls_top
    void Run() {
        const int length = 10;
        int A_local[10];
        int B_local[10];
        int C_local = 0;
        
        #pragma hls_unroll
        for (unsigned int i = 0; i < length; ++i) {
            A_local[i] = A.read();
            B_local[i] = B.read();
        }
        #pragma hls_unroll
        for (unsigned int i = 0; i < length; i++)
            C_local += A_local[i] * B_local[i];

        C.write(C_local);
    }
};
