template<typename T>
using OutputChannel = __xls_channel<T, __xls_channel_dir_Out>;

class TestBlock {
public:
    OutputChannel<int> out;

    int count = 0;

    #pragma hls_top
    void Run() {
        out.write(count);
        count++;
    }
};
