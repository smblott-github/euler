#!/usr/bin/env python3

# NOTE ****************************************************
# The exemplar in this directory is the naive approach.
# This is the correct approach.
#

import sys
n = int(sys.argv[1])

#
# We only need to calculate the contribution from n - n % 15 to n (exclusive).
#
# The rest (everything up to n - n % 15) can be calculated by a closed formula.
#
# The rests on the sum of 1 to m being m * (m + 1 ) // 2.
#

total = 0
divisor = n // 15

for i in range(divisor * 15, n):
   if i % 3 == 0 or i % 5 == 0:
      total = total + i

print(total + 105 * divisor * (divisor + 1) // 2 - (divisor * 60))
