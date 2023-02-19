//
// Created by Matus Mrekaj on 19/02/2023.
//

#ifndef LLVM_OBFUSCATOR_RNG_H
#define LLVM_OBFUSCATOR_RNG_H

#include <random>

uint64_t GenerateRandomInt64() {
    std::random_device rd;
    std::mt19937_64 rand(rd());
    std::uniform_int_distribution<uint64_t> dist;

    return dist(rand);
}

uint64_t GenerateRandomInt64(int64_t max) {
    return GenerateRandomInt64() % max;
}

#endif //LLVM_OBFUSCATOR_RNG_H
