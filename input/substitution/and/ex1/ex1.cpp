//
// Created by Matus Mrekaj on 20/02/2023.
//

#include <stdint.h>

int32_t xor_values(int32_t a, int32_t b, int32_t c, int32_t d) {
    int32_t first = a & b;
    int32_t second = c & d;

    return first & second;
}

int main() {
    int32_t a = 3;
    int32_t b = 7;
    int32_t c = 5;
    int32_t d = 3;

    int32_t ret = xor_values(a, b, c, d);

    return ret;
}