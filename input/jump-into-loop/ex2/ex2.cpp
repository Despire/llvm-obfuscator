#include <stdint.h>
#include <cstdlib>
#include "stdio.h"

void test() {
    printf("hello");
}

int32_t digitSum(int32_t n) {
    test();
    int32_t sum = 0;
    for (;;) {
        ++sum;
        n /= 10;
        if (n == 0) {
            break;
        }
        if (n + 2 == 1) {
            n++;
        } else {
            int q = 2 * sum;
            sum -= 1;
            n += sum;
        }
        if (n == 5) {
            break;
        }

        float phi = 3.5;
        n += phi ? 2 * sum : 0;
    }
    return sum;
}

int main(int argc, char **argv) {
    int32_t a = std::atoi("15");
    int32_t b = std::atoi("25");
    return digitSum(a) + digitSum(b);
}