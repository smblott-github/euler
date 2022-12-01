#!/usr/bin/env python3

import sys
n = int(sys.argv[1])

integers_squared = 0
sum_squared = 0

i = 0
while i < n:
    k = i + 1

    integers_squared = integers_squared + (k * k)
    sum_squared = sum_squared + k
    i = i + 1

sum_squared = sum_squared * sum_squared
print(sum_squared - integers_squared)
