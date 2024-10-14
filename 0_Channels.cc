template<typename T>
using OutputChannel = __xls_channel<T, __xls_channel_dir_Out>;

template<typename T>
using InputChannel = __xls_channel<T, __xls_channel_dir_In>;

class TestBlock {
public:
    InputChannel<int> in;
    OutputChannel<int> out;

    #pragma hls_top
    void Run() {
        auto x = in.read();
        out.write(3*x);
    }
};
