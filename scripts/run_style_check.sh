#!/bin/bash
echo "Running clang-tidy..."
clang-tidy src/*.cpp -p build/ || exit 1

echo "Running clang-format check..."
clang-format --dry-run --Werror src/*.cpp || exit 1

echo "✅ Code style checks passed!"
