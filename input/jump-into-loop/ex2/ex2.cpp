#include <stdint.h>
#include <cstdlib>
#include "stdio.h"

void test() {
    printf("hello");
}

int32_t digitSum(int32_t n) {
    test();
    int32_t sum = 0;
    for(;;) {
        ++sum;
        n /= 10;
        if (n == 0) {
            break;
        }
    }
    return sum;
}

int main(int argc, char **argv) {
    int32_t a = std::atoi("15");
    int32_t b = std::atoi("25");
    return digitSum(a) + digitSum(b);
}