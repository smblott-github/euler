#!/usr/bin/env zsh

for task in $( python3 ./sort-tasks.py $argv )
do
  cat <<EOF
- link:$task.html[$task]
EOF
done
