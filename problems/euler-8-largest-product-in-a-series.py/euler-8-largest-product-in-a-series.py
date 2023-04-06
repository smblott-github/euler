#!/usr/bin/env python3

# Note...
#
# This solution is O(n * m), where n is the number of digits in the product, and m is
# the number of digits in the input (1000).
#
# An O(m) solution should be possible.  The only trickyness would be dealing with 0s,
# (although I think you can just treat "0" as "1").  SB.
#

import sys

# from math import prod
#
# prod() isn't in python3.7, so we implement it here...
#
def prod(a):
   product = 1
   for v in a:
      product = product * v
   return product

def main():
    n_digits = int(sys.argv[1])
    int_list = [int(i) for i in sys.stdin.readline()]
    largest_product = max([prod(int_list[i: i + n_digits])
                           for i in range(len(int_list) - n_digits + 1)])
    print(largest_product)


if __name__ == '__main__':
    main()
