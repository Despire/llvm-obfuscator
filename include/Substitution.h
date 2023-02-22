//
// Created by Matus Mrekaj on 18/02/2023.
//

#ifndef LLVM_OBFUSCATOR_SUBSTITUTION_H
#define LLVM_OBFUSCATOR_SUBSTITUTION_H

#include "llvm/IR/PassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Pass.h"

// AdditionSubstitutionCount is the number of supported addition subsitutions.
constexpr int AdditionSubstitionFuncCount = 4;

// SubtractionSubstitutionFuncCount is the number of supported subtraction subtitutions.
constexpr int SubtractionSubstitutionFuncCount = 3;

// XORSubstitutionFuncCount is the number of supported XOR subtitutions.
constexpr int XORSubstitutionFuncCount = 3;

// ORSubstitutionFuncCount is the number of supported OR subtitutions.
constexpr int ORSubstitutionFuncCount = 2;

// ANDSubstitutionFuncCount is the number of supported AND subtitutions.
constexpr int ANDSubstitutionFuncCount = 2;


struct Substitution : public llvm::PassInfoMixin<Substitution> {
    using SubstitutionHandler = bool (Substitution::*)(llvm::BasicBlock &, llvm::BinaryOperator *,
                                                       llvm::BasicBlock::iterator &);

    SubstitutionHandler ANDHandlers[ANDSubstitutionFuncCount];
    SubstitutionHandler ORHandlers[ORSubstitutionFuncCount];
    SubstitutionHandler XORHandlers[XORSubstitutionFuncCount];
    SubstitutionHandler SubtractHandlers[SubtractionSubstitutionFuncCount];
    SubstitutionHandler AddHandlers[AdditionSubstitionFuncCount];

    explicit Substitution() : PassInfoMixin() {
        /*
         * Replace
         * a = b AND c
         *
         * With one of the below substitution, chosen at random (where r is a random value):
         * a = (b XOR !c) AND b
         * a = !(!b | !c) AND (r | !r)
         */
        ANDHandlers[0] = &Substitution::handlerANDVersion1;
        ANDHandlers[1] = &Substitution::handlerANDVersion2;

        /*
         * Replace
         * a = b OR c
         *
         * With one of the below substitution, chosen at random (where r is a random value):
         * a = (b & c) | (b ^ c)
         * a = [(!b & r) | (b & !r) ^ (!c & r) |(c & !r) ] | [!(!b | !c) && (r | !r)]
         */
        ORHandlers[0] = &Substitution::handlerORVersion1;
        ORHandlers[1] = &Substitution::handlerORVersion2;

        /*
         * Replace
         * a = b XOR c
         *
         * With one of the below substitution, chosen at random (where r is a random value):
         * a = (b XOR r) XOR (c XOR r)
         * a = (!b AND r OR b AND !r) XOR (!c AND r OR c AND !r)
         * a = (!b AND c) OR (b AND !c)
         */
        XORHandlers[0] = &Substitution::handlerXORVersion1;
        XORHandlers[1] = &Substitution::handlerXORVersion2;
        XORHandlers[2] = &Substitution::handlerXORVersion3;

        /*
         * Replace
         * a = b - c
         *
         * With one of the below substitution, chosen at random (where r is a random value):
         * a = b + (-c)
         * a = b + r; a -= c; a -= r;
         * a = b - r; a -= c; a += r;
         */
        SubtractHandlers[0] = &Substitution::handlerSubtractVersion1;
        SubtractHandlers[1] = &Substitution::handlerSubtractVersion2;
        SubtractHandlers[2] = &Substitution::handlerSubtractVersion3;

        /*
         * Replace:
         * a = b + c
         *
         * With one of the below substitution, chosen at random (where r is a random value):
         * a = b - (-c)
         * a = -(-b + (-c))
         * a = b + r; a += c; a -=r
         * a = b - r; a += c; a += r
         */
        AddHandlers[0] = &Substitution::handlerAddVersion1;
        AddHandlers[1] = &Substitution::handlerAddVersion2;
        AddHandlers[2] = &Substitution::handlerAddVersion3;
        AddHandlers[3] = &Substitution::handlerAddVersion4;
    }

    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &);

    // handleBasicBlock processes a single basic block with substitutions.
    bool handleBasicBlock(llvm::BasicBlock &BB);

    // handle8BitAddition is a special case where we apply a different substitution for 8bit additions.
    bool handle8BitAddition(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerAddVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerAddVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerAddVersion3(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerAddVersion4(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerSubtractVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerSubtractVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerSubtractVersion3(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerORVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerORVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerANDVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerANDVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerXORVersion1(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerXORVersion2(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);

    bool handlerXORVersion3(llvm::BasicBlock &BB, llvm::BinaryOperator *BO, llvm::BasicBlock::iterator &BI);
};

#endif //LLVM_OBFUSCATOR_SUBSTITUTION_H
