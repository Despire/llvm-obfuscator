#ifndef LLVM_OBFUSCATOR_STRINGSTATEMACHINE_H
#define LLVM_OBFUSCATOR_STRINGSTATEMACHINE_H

#include "RNG.h"

#include <unordered_map>
#include <string>
#include <vector>

struct Node {
    int32_t id = 0;
    Node *one = nullptr;
    Node *zero = nullptr;
    char c = 0;

    explicit Node(int32_t id) : id(id) {}

    bool done() { return one != nullptr && zero != nullptr; }

    Node *&next(std::string &s) {
        if (one == nullptr && zero == nullptr) {
            if (rand() % 2) {
                s.push_back('\1');
                return one;
            }
            s.push_back('\0');
            return zero;
        }
        if (one == nullptr) {
            s.push_back('\1');
            return one;
        }
        s.push_back('\0');
        return zero;
    }
};

struct StateMachine {
    int32_t counter = 0;
    std::unordered_map<char, std::vector<Node *> > transitions;
    Node *current = findFirstAvailableNode(0);

    explicit StateMachine() {}

    virtual ~StateMachine() {
        current = nullptr;

        for (auto c: transitions) {
            for (auto &v: c.second) {
                delete v;
                v = nullptr;
            }
        }
    }

    std::pair<std::vector<int32_t>, std::vector<char> >
    generate(const std::string &str, std::string &pattern) {
        // collect the created nodes for the generation of the arrays.
        std::vector<Node *> inOrder{current};

        for (auto &c: str) {
            auto *node = findFirstAvailableNode(c);
            inOrder.push_back(node);
            current->next(pattern) = node;
            current = node;
            current->c = c;
        }

        // add bogus branches.
        for (auto p: transitions) {
            for (auto n: p.second) {
                while (!n->done()) {
                    std::string s;
                    n->next(s) = randomNode();
                }
            }
        }

        std::sort(inOrder.begin(), inOrder.end(), [&](Node *&first, Node *&second) -> bool {
            return first->id < second->id;
        });
        inOrder.erase(std::unique(inOrder.begin(), inOrder.end(), [&](Node *&first, Node *&second) -> bool {
            return first->id == second->id;
        }), inOrder.end());

        // generate arrays.
        std::vector<int32_t> next;
        std::vector<char> out;

        for (auto node: inOrder) {
            next.emplace_back(node->zero->id);
            next.emplace_back(node->one->id);
            out.emplace_back(node->zero->c);
            out.emplace_back(node->one->c);
        }

        return {std::move(next), std::move(out)};
    }

    Node *findFirstAvailableNode(char c) {
        auto &nodes = transitions[c];
        if (nodes.empty()) {
            nodes.push_back(new Node(counter++));
        }

        auto last = std::prev(nodes.end());
        if ((*last)->done()) {
            nodes.push_back(new Node(counter++));
            last = std::prev(nodes.end());
        }

        return *last;
    }

    Node *randomNode() {
        auto iter = transitions.begin();
        std::advance(iter, RandomInt64(transitions.size()));
        return iter->second.front();
    }
};

inline void decode(const char *pattern, int len, char *original, int32_t *next, char *out) {
    int32_t state = 0;
    for (int idx = 0; idx < len; ++idx) {
        char shift = pattern[idx];
        original[idx] = out[(state << 1) + shift];
        state = next[(state << 1) + shift];
    }
}

#endif //LLVM_OBFUSCATOR_STRINGSTATEMACHINE_H
