#!/usr/bin/env python3

import sys

a = int(sys.argv[1])  # get one number from a command-line argument
b = int(input())      # get the second from standard input

# And get the third from a file.
#
with open("data.txt") as f:
   c = int(f.readline())

print(a + b + c)
