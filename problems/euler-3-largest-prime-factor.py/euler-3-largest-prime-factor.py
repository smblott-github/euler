#!/usr/bin/env python3

import sys
n = int(sys.argv[1])

max_prime = 0
prime = 2
while n > 1:
    # You don't have to check for primality, as
    # if a non-prime factor is possible, it itself will be
    # prime-factorised. E.G. if 9 is a factor, it will be factorised
    # as 3 x 3 instead of 9.
    while n % prime == 0:
        n = n // prime
        max_prime = prime

    prime = prime + 1

print(max_prime)
