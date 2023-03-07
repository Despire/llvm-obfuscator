//
// Created by Matus Mrekaj on 19/02/2023.
//

#include <stdint.h>

// http://ac.inf.elte.hu/Vol_030_2009/003.pdf
int32_t duffs_device(int32_t count, int32_t *from, int32_t *to) {
    int n = (count + 7) / 8;
    switch (count % 8) {
        case 0:
            do {
                *to = *from++;
                case 7:
                    *to = *from++;
                case 6:
                    *to = *from++;
                case 5:
                    *to = *from++;
                case 4:
                    *to = *from++;
                case 3:
                    *to = *from++;
                case 2:
                    *to = *from++;
                case 1:
                    *to = *from++;
            } while (--n > 0);
    }

    return count + *from + *to;
}

int main(int argc, char **argv) {
    int32_t a = 15;
    int32_t a_from = 1, a_to = 5;
    int32_t b = 25;
    int32_t b_from = 1, b_to = 5;
    return duffs_device(a, &a_from, &a_to) + duffs_device(b, &b_from, &b_to);
}