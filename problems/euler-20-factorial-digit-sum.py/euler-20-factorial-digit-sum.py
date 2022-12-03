#!/usr/bin/env python3

import sys

n = int(sys.argv[1])
digits = n
result = 0
for i in range(n, 1, -1):
    digits *= i - 1

digits = str(digits)

for num in digits:
    result += int(num)

print(result)
