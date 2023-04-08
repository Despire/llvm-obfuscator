#include <stdint.h>

int32_t digitSum(int32_t n) {
    int32_t sum = 0;
    for (;;) {
        if (n == 0) {
            break;
        }
        ++sum;
        n /= 10;
    }
    return sum;
}

int main() {
    return digitSum(15) + digitSum(25);
}