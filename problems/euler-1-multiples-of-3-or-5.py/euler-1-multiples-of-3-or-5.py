#!/usr/bin/env python3

# NOTE:
#
# The following solution iterates.  But I'm pretty sure that there's a closed
# formula for this, and that the iteration is unnecessary.
#

import sys

N = int(sys.argv[1])
total = 0

for n in range(N):
   if n % 3 == 0 or n % 5 == 0:
      total = total + n

print(total)
