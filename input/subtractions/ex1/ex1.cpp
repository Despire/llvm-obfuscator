//
// Created by Matus Mrekaj on 20/02/2023.
//

#include <stdint.h>

int32_t sub_values(int32_t a, int32_t b, int32_t c, int32_t d) {
    int32_t first = a - b;
    int32_t second = c - d;
    int32_t ret = first - second;
    ret -= first;

    return ret - second;
}

int main() {
    int32_t a = 15;
    int32_t b = 30;
    int32_t c = 45;
    int32_t d = 10;

    int32_t ret = sub_values(a, b, c, d);

    return ret;
}