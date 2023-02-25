//
// Created by Matus Mrekaj on 20/02/2023.
//

#include <stdint.h>

int32_t and_values(int32_t a, int32_t b, int32_t c, int32_t d) {
    int32_t first = a & b;
    int32_t second = c & d;

    return first & second;
}

int32_t countSetBits(int32_t n) {
    int32_t count = 0;
    while (n != 0) {
        count += n & 1;
        n >>= 1;
    }
    return count;
}

int main() {
    int32_t a = countSetBits(3);
    int32_t b = countSetBits(7);
    int32_t c = countSetBits(5);
    int32_t d = countSetBits(3);
    int32_t ret = and_values(a, b, c, d) & and_values(d, c, b, a);
    return ret;
}