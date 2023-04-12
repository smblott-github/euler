# Euler problems on Einstein

See [here](https://euler.computing.dcu.ie/) (or the `web/index.ascii` file in this repository).

## Problem 16

This repository contains a solution folder that has a file called euler-16-power-digit-sum.js. This JavaScript file solves Euler
problem number 16, which asks what the sum of digits of 2^1000 is. Obviously, you cannot store such a large number in 
a variable like an integer or a double, so my solution uses a list to store the value of large numbers. In order to 
compute 2^1000, I use a ripple adder with a carry bit to double the number 1000 times, then use lambda reduce function
to find and print the sum.

The program can be called by cd to the root folder of this project and executing `node solution/euler-16-power-digit-sum.js {x}` where
{x} is the power of 2 that you want to test. 

For example, `node solution/euler-16-power-digit-sum.js 1000` will yield an answer of `1366`.
