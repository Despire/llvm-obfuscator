#include <stdint.h>

int32_t d(int32_t count, int32_t *from, int32_t *to) {
    int n = (count + 7) / 8;
    for(int i=0;i<n;i++) {
        *to=(*from)++;
    }

    return count + *from + *to;
}

int main(int argc, char **argv) {
    int32_t a = 15;
    int32_t a_from = 1, a_to = 5;
    int32_t b = 25;
    int32_t b_from = 1, b_to = 5;
    return d(a, &a_from, &a_to) + d(b, &b_from, &b_to);
}