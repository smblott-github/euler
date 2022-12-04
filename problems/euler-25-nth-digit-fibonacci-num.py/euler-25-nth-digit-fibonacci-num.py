#!/usr/bin/env python3

import sys

def fib(n):
    if n == 0:
        return 0

    fibs = [0, 1]
    limit = 10 ** (n - 1)

    index = 1
    while fibs[1] < limit:
        tmp = fibs[0] + fibs[1]
        fibs[0], fibs[1] = fibs[1], tmp
        index += 1
    return index

def main():
    num_of_digits = int(sys.argv[1])
    index = fib(num_of_digits)
    print(index)

if __name__ == '__main__':
    main()
