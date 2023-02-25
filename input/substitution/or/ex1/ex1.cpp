//
// Created by Matus Mrekaj on 20/02/2023.
//

#include <stdint.h>

const int MAX_NUM = 1000000;
const int INT_SIZE = 32;

void unionSets(int A[], int B[], int C[], int sizeA, int sizeB, int& sizeC) {
    int bitVector[(MAX_NUM / INT_SIZE) + 1] = {0};
    sizeC = 0;

    for (int i = 0; i < sizeA; i++) {
        int index = A[i] / INT_SIZE;
        int bit = A[i] % INT_SIZE;
        bitVector[index] |= 1 << bit;
    }

    for (int i = 0; i < sizeB; i++) {
        int index = B[i] / INT_SIZE;
        int bit = B[i] % INT_SIZE;
        bitVector[index] |= 1 << bit;
    }

    for (int i = 0; i < MAX_NUM; i++) {
        int index = i / INT_SIZE;
        int bit = i % INT_SIZE;
        if ((bitVector[index] & (1 << bit)) != 0) {
            C[sizeC++] = i;
        }
    }
}

int32_t or_values(int32_t a, int32_t b, int32_t c, int32_t d) {
    int32_t first = a | b;
    int32_t second = c | d;

    return first | second;
}

int main() {
    int32_t a = 1;
    int32_t b = a + 1;
    int32_t c = b + 1;
    int32_t d = c + 1;

    int A[] = {1, 3, 5, 7};
    int B[] = {2, 4, 6, 8};
    int C[8];
    int sizeA = 4;
    int sizeB = 4;
    int sizeC;

    unionSets(A, B, C, sizeA, sizeB,sizeC);

    int32_t ret = or_values(a, b, c, d) | or_values(sizeA, sizeB, sizeC, sizeB);

    return ret;
}