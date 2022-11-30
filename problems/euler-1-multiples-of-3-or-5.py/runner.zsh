#!/usr/bin/env zsh

#
# The TASK environment variable will be set in the Einstein
# execution environment.
#

for v in 0 10 100 500 1000 5000 10000
do
  show-exec-command python3 $TASK $v
done
