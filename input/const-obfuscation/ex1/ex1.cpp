int digitSum(int n) {
    int sum = 0;
    for (; n > 0; n /= 10) {
        sum += n % 10;
    }
    return sum;
}

int main(int argc, char **argv) {
    int a = 15;
    int b = 25;
    return digitSum(a) + digitSum(b);
}