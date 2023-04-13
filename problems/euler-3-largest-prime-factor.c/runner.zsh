#!/usr/bin/env zsh
#
# The TASK environment variable will be set automatically in the Einstein execution
# environment.
#
# For testing, try to set the TASK environment variable...
#
[[ -z $TASK ]] && [[ -f $PWD:t ]] && TASK=$PWD:t
[[ -z $TASK ]] && [[ -f $PWD:h:t ]] && TASK=$PWD:h:t

# Fail (exit) immediately if any of the following commands fail.
#
set -e

show-exec-command gcc $TASK -o executable

# The show-exec-command is available in the Einstein execution environment.
# It is also available in the `bin` directory in the project repo.  You can
# install it locally from there for testing.
#
for v in 10 1001 1003 10991 100245 1000001
do
  show-exec-command ./executable $v
done
