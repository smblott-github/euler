#!/usr/bin/env zsh
set -e

# Einstein does contain a script which is used to automatically
# compile and run C programs.  However, it is often better to
# just do it manually with a "runner.zsh" script like this.
#
# Additionally, with this approach you can test your runner locally.
#
# Observe that nothing in this runner script depends upon the particular
# task at hand.  In other words, you can re-use it for different C tasks.

#
# "gcc" consumes standard input; so we redirect standard input here to
# ensure that the original standard input is preserved.
#
gcc -o ./executable $TASK < /dev/null

exec ./executable $argv
