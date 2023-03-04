//
// Created by Matus Mrekaj on 19/02/2023.
//

#include <stdint.h>
#include <cstdlib>

int32_t digitSum(int32_t n) {
    int32_t sum = 0;
    do {
        for (; n > 0; n /= 10) {
            sum += n % 10;
        }
    } while (n != 0);
    return sum;
}

int main(int argc, char **argv) {
    int32_t a = std::atoi("15");
    int32_t b = std::atoi("25");
    return digitSum(a) + digitSum(b);
}