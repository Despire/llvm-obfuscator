//
// Created by Matus Mrekaj on 19/02/2023.
//

#include <stdint.h>

int8_t digitSum(int8_t n) {
    int8_t sum = 0;
    while (n > 0) {
        sum += n % 10;
        n /= 10;
    }

    return sum;
}

int main() {
    int8_t a = digitSum(15);
    int8_t b = digitSum(30);
    int8_t c = digitSum(45);
    int8_t d = digitSum(10);

    return digitSum(a) + digitSum(b) + digitSum(c) + digitSum(d);
}