#!/bin/bash

echo "-----Testing Control Flow Flattening-----"
for i in {0..10}; do
  python3 ./tests/test_cff.py
done
echo "-----------------------------------------"

echo "-----Testing Substitution with multiple continuous rounds-----"
# assume the env-vars file was applied.
for i in {0..25}; do
  python3 ./tests/test_substitution.py
done
echo "--------------------------------------------------------------"
