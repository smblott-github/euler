#!/usr/bin/env python3

import sys

n = int(sys.argv[1])

total = 0
prev = 1
curr = 1

while curr < n:
    if curr % 2 == 0:
        total += curr

    tmp = curr
    curr += prev
    prev = tmp

print(total)
