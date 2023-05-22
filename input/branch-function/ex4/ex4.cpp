#include <stdint.h>
#include <cstdlib>

int32_t decide(int32_t a, int32_t cond) {
    int32_t dispatcher = 0;
    for (;;) {
        switch (dispatcher) {
            case 0:
                if (a < cond) {
                    a = a + cond;
                    dispatcher = 3;
                    break;
                }
                dispatcher = 1;
                break;
            case 1:
                if (a == cond) {
                    a = cond - a;
                    dispatcher = 3;
                    break;
                }
                dispatcher = 2;
                break;
            case 2:
                a -= cond - a;
                dispatcher = 3;
                break;
            case 3:
                return a;
            default:
                break;
        }
    }
}

int main(int argc, char **argv) {
    int32_t a = std::atoi("15");
    int32_t b = std::atoi("25");
    return decide(a, b);
}