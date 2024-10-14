template<typename T>
using InputChannel = __xls_channel<T, __xls_channel_dir_In>;
template<typename T>
using OutputChannel = __xls_channel<T, __xls_channel_dir_Out>;

class TestBlock {
public:
    InputChannel<int> in;
    OutputChannel<int> out;

    #pragma hls_top
    void Run() {
    int sum = 0;
        #pragma hls_pipeline_unroll yes
        for(int i=0;i<4;++i) {
            sum += in.read();
        }
        out.write(sum);
    }
};
