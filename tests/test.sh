#!/bin/bash

echo "-----Testing Merge Funcs-----"
for i in {0..1}; do
  python3 ./tests/test_mergef.py
done
echo "-----Testing Block Extraction-----"
for i in {0..1}; do
  python3 ./tests/test_bext.py
done
echo "-----------------------------------------"
echo "-----Testing Constant Obfuscation-----"
for i in {0..10}; do
  python3 ./tests/test_cobfs.py
done
echo "-----------------------------------------"

echo "-----Testing Branch Function-----"
for i in {0..10}; do
  python3 ./tests/test_branchf.py
done
echo "-----------------------------------------"

echo "-----Testing Fake Loop-----"
for i in {0..10}; do
  python3 ./tests/test_fakeloop.py
done

echo "-----------------------------------------"

echo "-----Testing String obfuscation-----"
  python3 ./tests/test_strobfs.py
echo "-----------------------------------------"

echo "-----Testing Jump Into Loop-----"
for i in {0..10}; do
  python3 ./tests/test_loopjump.py
done
echo "-----------------------------------------"

echo "-----Testing Opaque Predicates-----"
for i in {0..10}; do
  python3 ./tests/test_opaque.py
done
echo "-----------------------------------------"

echo "-----Testing Control Flow Flattening-----"
for i in {0..10}; do
  python3 ./tests/test_cff.py
done
echo "-----------------------------------------"

echo "-----Testing Substitution with multiple continuous rounds-----"
# assume the env-vars file was applied.
for i in {0..10}; do
  python3 ./tests/test_substitution.py
done
echo "--------------------------------------------------------------"
