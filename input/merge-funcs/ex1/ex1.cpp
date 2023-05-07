#include <stdint.h>
#include <cstdlib>

static int32_t digitSum2(int32_t *n) {
    int32_t copy = *n;
    int32_t sum = 0;
    while (copy > 0) {
        sum += copy % 10;
        copy /= 10;
    }
    return sum;
}

static int32_t digitSum(int32_t n) {
    int32_t sum = 0;
    while (n > 0) {
        sum += n % 10;
        n /= 10;
    }

    return sum;
}

int main(int argc, char **argv) {
    int32_t a = std::atoi("15");
    int32_t b = std::atoi("25");
    auto res = digitSum(a) + digitSum2(&b);
    res += digitSum2(&res);
    return res + digitSum(a + b);
}