#ifndef LLVM_OBFUSCATOR_RNG_H
#define LLVM_OBFUSCATOR_RNG_H

#include <random>

inline std::mt19937_64 GetRandomGenerator() {
    std::random_device rd;
    std::mt19937_64 rand(rd());
    return rand;
}

inline uint64_t RandomInt64() {
    auto rand = GetRandomGenerator();
    std::uniform_int_distribution<uint64_t> dist;
    return dist(rand);
}

inline uint64_t RandomInt64(int64_t max) {
    return RandomInt64() % max;
}

#endif //LLVM_OBFUSCATOR_RNG_H
