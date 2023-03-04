#!/bin/bash

echo "Testing Control Flow Flattening"

python3 ./tests/test_cff.py

echo "Testing Substitution with multiple continuous rounds"
# assume the env-vars file was applied.
for i in {0..25}; do
  python3 ./tests/test_substitution.py
done
