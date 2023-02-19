//
// Created by Matus Mrekaj on 19/02/2023.
//

#include <stdint.h>

int8_t add_values(int8_t a, int8_t b, int8_t c, int8_t d) {
    int8_t first = a + b;
    int8_t second = c + d;

    return first + second;
}

int main() {
    int8_t a = 15;
    int8_t b = 30;
    int8_t c = 45;
    int8_t d = 10;

    int8_t ret = add_values(a, b, c, d);
    return ret;
}