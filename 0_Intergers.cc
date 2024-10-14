#include "xls_int.h"

#pragma hls_top
XlsInt<55, true> foo(XlsInt<17, false> x, XlsInt<5, false> y) {
    return x+y;
}
