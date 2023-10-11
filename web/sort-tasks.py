#!/usr/bin/env python3

#
# We have task names like these:
#  - euler_10_....
#  - euler-11-....
#  - euler-2-....
#  - hello.py
#
#  ... and we need put them into a sensible order.
#

import sys, re
names = []

for name in sys.argv[1:]:
   match = re.search(r"\d+", name)
   if match:
      names.append((int(match.group()), name))
   else:
      names.append((0, name))

for name in sorted(names):
   print(name[1])
