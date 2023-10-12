#!/usr/bin/env python3

# Note...
#
# This is a naive, iterative solution.
#
# A better solution exists with a simple closed formula and
# a loop which iterates at most 14 times.
#

import sys

N = int(sys.argv[1])
total = 0

for n in range(N):
   if n % 3 == 0 or n % 5 == 0:
      total = total + n

print(total)
