#!/usr/bin/env python3

import sys
n = int(sys.argv[1])

max_num = 10 ** n - 1
min_num = 10 ** (n - 1) - 1

largest_palindrome = -1
i = max_num
# If the largest palindrome is >= i * max_num, that means
# max_num is one of the factors of a valid palindrome.
# This means there is no futher i capable of producing a higher
# palindrome, as i is decreasing. This saves a good few cycles.
while i > min_num and largest_palindrome < i * max_num:
    j = max_num
    while j > min_num:
        p = i * j

        str_p = str(p)
        if (p > largest_palindrome and str_p == str_p[::-1]):
            largest_palindrome = p

        j = j - 1
    i = i - 1

print(largest_palindrome)
