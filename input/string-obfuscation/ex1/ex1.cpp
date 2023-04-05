#include <string>

struct s {
    const std::string s = "weqeqweqConstantStruct";
};

int32_t digitSum(int32_t n) {
    int32_t sum = 0;
    printf("testing string 1\n");

    for (; n > 0; n /= 10) {
        sum += n % 10;
    }

    printf("testing string 2\n");
    return sum;
}

int main(int argc, char **argv) {
    s s;
    printf("Hello, 世界\n");
    int32_t a = std::atoi("15");
    int32_t b = std::atoi("25");
    return digitSum(a) + digitSum(b);
}