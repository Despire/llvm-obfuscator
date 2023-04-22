//
// Created by Matus Mrekaj on 19/02/2023.
//

#include <stdint.h>
#include <cstdlib>

int32_t decide(int32_t a, int32_t cond) {
    if (a < cond) {
        a = a + cond;
    } else if (a == cond){
        a = cond - a;
        return a -= 2 * cond + a;
    } else {
        return a -= cond - a;
    }
    return a;
}

int main(int argc, char **argv) {
    int32_t a = std::atoi("15");
    int32_t b = std::atoi("25");
    return decide(a, b);
}