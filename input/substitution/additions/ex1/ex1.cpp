//
// Created by Matus Mrekaj on 19/02/2023.
//

#include <stdint.h>

int32_t fibonacci(int32_t n) {
    int a = 0, b = 1, c;
    for (int i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return c;
}

int main() {
    return fibonacci(10);
}