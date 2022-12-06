#!/usr/bin/env python3

# -----------------------------------------------------
# This solution is based on the procedure outlined to find
# the LCM of 2 numbers outlined in this artice:
#   https://www.cuemath.com/numbers/lcm-least-common-multiple/
# It's under the 'LCM by Prime Factorisation Method' heading.
# -----------------------------------------------------

import sys

n = int(sys.argv[1])


def prime_factors(k: int):
    """
    Find and return the prime factors of k in the form:
        {"factor": amount present}
    If k = 9, it would return {"3": 2}, representing factors [3, 3].

    Complexity: O(log n)
    """
    factors = {}
    prime = 2
    while k > 1:
        str_prime = str(prime)
        while k % prime == 0:
            if str_prime in factors:
                factors[str_prime] += 1
            else:
                factors[str_prime] = 1

            k //= prime

        prime += 1

    return factors


def lcm(a: dict, b: dict = {}):
    """
    Organise factors using a modified set union to find the LCM.

    E.G if a has factors [2, 3, 5] and b has [2, 3, 3, 5],
    take the highest amount of a duplicate factor and store it in
    the result. Above, we would take the two 3's from b instead of the one
    3 from a.

    The result for such a and b would be {"2": 1, "3": 2, "5": 1}, which
    represents [2, 3, 3, 5], which when expanded to a product is the LCM of
    the product of a and the product of b.

    Complexity: O(n) in isolation, but this function is called on the
    prime factors of n, which is ~O(log n). The amount of prime factors for
    any n is not predictable but remains small as n grows.
    """
    result = {}
    for key in a:
        result[key] = a[key]

    for key in b:
        if key not in a:
            result[key] = b[key]
        else:
            if a[key] > b[key]:
                result[key] = a[key]
            elif a[key] < b[key]:
                result[key] = b[key]

    return result


def product(factors: dict):
    """
    Take a dictionary in the form {"factor": amount present} and
    return the expanded product of those factors.
    """
    p = 1
    for key in factors:
        p *= int(key) ** factors[key]

    return p


# Keep prime factorising, then normalising with the previous
# factors to get a dictionary of all factors of the LCM.
# This algorithm is ~O(n * log n), which was reflected in my timed tests.
factors = {}
i = 0
while i < n:  # O(n)
    if i == 0:
        # Add 2 so we start at 2, 1 has no effect as every number is divisible by 1.
        factors = prime_factors(i + 2)
    else:
        factors = lcm(factors, prime_factors(i + 2))
    i += 1

print(product(factors))
