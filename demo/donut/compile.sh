clang -O1 -S -emit-llvm -o donut.ll -Xclang -disable-O0-optnone donut_deobfuscated.c
