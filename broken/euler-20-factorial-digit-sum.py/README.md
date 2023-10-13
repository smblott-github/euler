When I (SB) run this locally, it's fine.

But when the tests are run on the CI environment, it fails with:

    ValueError: Exceeds the limit (4300) for integer string conversion

I (SB) suspect -- without having looked too deeply into it -- that the
underlying problem is actually that the algorithm being used is brute
force, and really a better algorithm is needed.

That, after all, is the purpose of many of these Euler problems.
