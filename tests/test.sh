#!/bin/bash

echo "-----Testing Jump Into Loop-----"
  python3 ./tests/test_strobfs.py
echo "-----------------------------------------"

echo "-----Testing Jump Into Loop-----"
for i in {0..60}; do
  python3 ./tests/test_loopjump.py
done
echo "-----------------------------------------"

echo "-----Testing Opaque Predicates-----"
for i in {0..30}; do
  python3 ./tests/test_opaque.py
done
echo "-----------------------------------------"

echo "-----Testing Control Flow Flattening-----"
for i in {0..30}; do
  python3 ./tests/test_cff.py
done
echo "-----------------------------------------"

echo "-----Testing Substitution with multiple continuous rounds-----"
# assume the env-vars file was applied.
for i in {0..30}; do
  python3 ./tests/test_substitution.py
done
echo "--------------------------------------------------------------"
