//
// Created by Matus Mrekaj on 19/02/2023.
//

#include <stdint.h>

int32_t add_values(int32_t a, int32_t b, int32_t c, int32_t d) {
    int32_t first = a + b;
    int32_t second = c + d;

    return first + second;
}

int main() {
    int32_t a = 15;
    int32_t b = 30;
    int32_t c = 45;
    int32_t d = 10;

    int32_t ret = add_values(a, b, c, d);
    return ret;
}