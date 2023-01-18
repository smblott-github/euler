#!/usr/bin/env python3

import sys
from math import prod


def main():
    n_digits = int(sys.argv[1])
    int_list = [int(i) for i in sys.stdin.readline()]
    largest_product = max([prod(int_list[i: i + n_digits])
                           for i in range(len(int_list) - n_digits + 1)])
    print(largest_product)


if __name__ == '__main__':
    main()
