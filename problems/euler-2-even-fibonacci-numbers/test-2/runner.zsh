#!/usr/bin/env zsh

[[ -z $TASK ]] && [[ -f $PWD:t ]] && TASK=$PWD:t
[[ -z $TASK  ]] && [[ -f $PWD:h:t ]] && TASK=$PWD:h:t

set -e
show-exec-command g++ -Wall -Wextra -Werror $TASK

for v in  100 100000 20000000
do
    show-exec-command ./a.out $v
done
