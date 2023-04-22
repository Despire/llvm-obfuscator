#include <stdio.h>
#include <stdint.h>
#include <cstdlib>

class H {
public:
    void p() {
        printf("test");
    }
};

int32_t sub(int32_t n) {
    for (int i = 0; i < n; i++) {
        n -= 5;
    }

    if (n < 0) {
        for (int i = 0; i > n; i++) {
            n -= 5;
        }
    }

    if (n < -5) {
        for (int i = 0; i > n; i++) {
            n -= 5;
        }
    }

    if (n < -50) {
        for (int i = 0; i > n; i++) {
            n -= 5;
        }
    }

    if (n < -50) {
        for (int i = 0; i > n; i++) {
            n -= 5;
        }
    }

    if (n < -100) {
        for (int i = 0; i > n; i++) {
            n -= 5;
        }
    }


    return n;
}

int32_t digitSum(int32_t n) {
    int s = sub(n);
    H h;
    int32_t sum = 0;
    while (n > 0) {
        sum += n % 10;
        n /= 10;
        h.p();
        printf("hello");
    }
    h.p();
    printf("world");
    h.p();

    return sum - s - sub(sum);
}

int main(int argc, char **argv) {
    H h;
    int32_t a = std::atoi("15");
    int32_t b = std::atoi("25");
    h.p();
    return digitSum(a) + digitSum(b);
}