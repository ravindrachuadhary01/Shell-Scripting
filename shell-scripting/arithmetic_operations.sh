#!/bin/bash

# This script demonstrates basic arithmetic operations in Bash.

echo "Enter the first number:"
read a
echo "Enter the second number:"
read b
c=$((a + b))

echo "The sum of $a and $b is = $c"

echo "The difference of $a and $b is = $((a - b))"

echo "The product of $a and $b is = $((a * b))"

echo "The quotient of $a and $b is = $((a / b))"

echo "The remainder of $a divided by $b is = $((a % b))"

echo "The value of a raised to the power of b is =  $((a ** b))"
