#!/usr/bin/env zsh

#
# The TASK environment variable will be set in the Einstein execution environment.
#
# Try to set the TASK environment variable for testing...
#
[[ -z $TASK ]] && [[ -f $PWD:t ]] && TASK=$PWD:t
[[ -z $TASK ]] && [[ -f $PWD:h:t ]] && TASK=$PWD:h:t

for v in 0 10 100 500 1000 5000 10000
do
  show-exec-command python3 $TASK $v
done
