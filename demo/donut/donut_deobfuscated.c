#include <stdio.h>
#include <unistd.h>
#include <math.h>
#include <string.h>
#include <time.h>

typedef int ERROR;

enum ERRORS {
    NIL = 0,
    OUT_OF_BOUNDS = 1,
    INVALID_ARG = 2,
};

const size_t Z_SIZE = 1760;
const size_t B_SIZE = 1760;
const size_t WAIT_TIME = 30000;
const char *CHARS = ".,-~:;=!*#$@";

ERROR __attribute__ ((noinline)) update(float *A, float *B) {
    if (A == NULL || B == NULL) {
        return INVALID_ARG;
    }

    *A += 0.00004;
    *B += 0.00002;

    return NIL;
}

ERROR __attribute__ ((noinline)) render(float *A, float *B, char *b, size_t b_size) {
    if (b_size != B_SIZE) {
        return INVALID_ARG;
    }

    ERROR err;

    for(int k = 0; k <= b_size; k++) {
        putchar(k % 80 ? b[k] : 10);

        err = update(A, B);
        if (err != NIL) {
            return err;
        }
    }

    return NIL;
}

ERROR __attribute__ ((noinline)) clear(char *b, size_t b_size, float *z, size_t z_size) {
    if (b == NULL || z == NULL) {
        return INVALID_ARG;
    }

    if (b_size != B_SIZE || z_size != 4*Z_SIZE) {
        return INVALID_ARG;
    }

    memset(b,32,b_size);
    memset(z,0,z_size);

    return NIL;
}

static ERROR __attribute__ ((noinline)) inner_loop(float j, float *A, float *B, char *b, float *z, size_t b_size, size_t z_size) {
    if (A == NULL || B == NULL || b == NULL || z == NULL) {
        return INVALID_ARG;
    }

    if (b_size != B_SIZE || z_size != 4*Z_SIZE) {
        return INVALID_ARG;
    }

    for(float i=0; i < 6.28; i += 0.02) {
        float c = sin(i);
        float d = cos(j);
        float e = sin(*A);
        float f = sin(j);
        float g = cos(*A);
        float h = d + 2;
        float D = 1 / (c * h * e + f * g + 5);
        float l = cos(i);
        float m = cos(*B);
        float n = sin(*B);
        float t = c * h * g - f * e;
        int x = 40 + 30 * D * (l * h * m - t * n);
        int y= 12 + 15 * D * (l * h * n + t * m);
        int o = x + 80 * y;
        int N = 8 * ((f * e - c * d * g) * m - c * d * e - f * g - l * d * n);
        if(22 > y && y > 0 && x > 0 && 80 > x && D > z[o]) {
            z[o] = D;
            b[o] = CHARS[N > 0 ? N : 0];
        }
    }
    return NIL;
}

static ERROR __attribute__ ((noinline)) main_loop(float *A, float *B, char *b, float *z, size_t b_size, size_t z_size) {
    ERROR err;

    err = clear(b, b_size, z, z_size);
    if (err != NIL) {
        return err;
    }

    for(float j=0; j < 6.28; j += 0.07) {
        err = inner_loop(j, A, B, b, z, b_size, z_size);
        if (err != NIL) {
            return err;
        }
    }

    printf("\x1b[H");

    err = render(A, B, b, b_size);
    if (err != NIL) {
        return err;
    }

    return NIL;
}

static void __attribute__ ((noinline)) wait(size_t time) {
    usleep(time);
}

int main() {
    ERROR err;
    float A = 0, B = 0, z[Z_SIZE];
    char b[B_SIZE];

    printf("\x1b[2J");

    for(;;) {
         // Start tracking time
        clock_t start = clock();

        err = main_loop(&A, &B, b, z, B_SIZE, Z_SIZE * 4);
        if (err != NIL) {
            return err;
        }

        // End tracking time
        clock_t end = clock();

         // Calculate elapsed time in seconds
        double elapsed = (double)(end - start) / CLOCKS_PER_SEC;

        printf("time to render frame: %f seconds\n", elapsed);

        wait(WAIT_TIME);
    }

    return 0;
}
