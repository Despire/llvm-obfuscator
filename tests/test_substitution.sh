#!/bin/bash

# assume the env-vars file was applied.
for i in {0..50}; do
  python3 ./tests/test_substitution.py
done