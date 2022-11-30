#!/usr/bin/env python3

import sys

N = int(sys.argv[1])
total = 0

for n in range(N):
   if n % 3 == 0 or n % 5 == 0:
      total = total + n

print(total)
