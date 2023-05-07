#include <stdint.h>
#include <cstdlib>
#include <string>

class HH {
public:
    static int tt;
public:
    int q = 10;
public:
    static int32_t digitSum(int32_t t) {
        int32_t sum = 0;
        sum += t * 2 * HH::tt;
        return sum;
    }
};

int HH::tt = 10;

static HH singleton(int32_t a) {
    return HH{.q = a * 2};
}

static int32_t* digitSum(int32_t q) {
    int32_t *sum = new int32_t (0);
    *sum += q * 2;
    return sum;
}

static std::string stringMul(const std::string &str) {
    std::string out;
    for (auto c: str) {
        out.push_back(c * 2);
    }
    return out;
}

static int stringSum(const std::string &str) {
    int sum = 0;
    for (auto c: str) {
        sum += c;
    }
    return sum;
}

int main(int argc, char **argv) {
    int32_t *first = digitSum(std::atoi(std::string("15").c_str()));
    int32_t second = HH::digitSum(std::atoi("13"));
    int32_t *third = digitSum(stringSum(stringMul("abc")));
    int32_t fourth = singleton(*first + second + *third).q;

    int32_t result = *first + second + *third + fourth;
    delete first;
    delete third;

    return result;
}