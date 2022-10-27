#!/bin/bash
set -e
set -x

./llvm-tblgen -gen-attrs HelloAttribute.td -o HelloAttribute.inc
clang++ -c HelloAttribute.cpp -E -o HelloAttribute.ii
clang++ HelloAttribute.ii -o HelloAttribute
./HelloAttribute
