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

int32_t absDiff(int32_t a, int32_t b) {
    int diff = a - b;
    if (diff < 0) {
        diff = -diff;
    }
    return diff;
}

int main() {
    int32_t a = absDiff(15, 51);
    int32_t b = absDiff(30, 35);
    int32_t c = absDiff(45, 54);
    int32_t d = absDiff(10, 15);

    int32_t ret = sub_values(a, b, c, d);

    return ret;
}