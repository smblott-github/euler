#!/usr/bin/env python3

import sys

n = int(sys.arv[1])
m = sys.stdin.read().split()
m = "".join(m)

total = 0
i = 0
j = 0

while i < len(m) and j < len(m):
   curr = 1
   j = i
   while j < n + i:
      curr = curr * int(m[j])
      j = j + 1
   if total < curr:
      total = curr
   i = i + 1

print(total)
