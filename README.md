# Unexpected Results in MATLAB Function Due to Floating Point Comparison

This repository contains a MATLAB function (`myFunction.m`) that demonstrates a common error related to floating-point comparisons.  The function aims to square positive inputs, return 0 for 0, and return the negation of negative inputs. However, due to the nature of floating-point arithmetic, it may produce unexpected results near zero.

The solution demonstrates a robust approach to handling these types of comparisons, avoiding potential issues with floating-point precision.

## Bug Description

The original `myFunction.m` uses direct comparisons (`==`, `>`) with floating-point numbers.  This can lead to incorrect results when inputs are very close to zero but not exactly zero due to limitations in representing real numbers using floating-point formats.

## Solution

The `bugSolution.m` file shows how to use a tolerance level to mitigate the effect of floating-point inaccuracy when comparing numbers near zero. Instead of direct comparison with zero, we compare the absolute difference to a small tolerance value. 
