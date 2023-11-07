#!/usr/bin/env zsh
set -e
dst=$PWD

#
# The primary copy of some of these scripts is the einstein
# repo.  This script just copies them across to here, because
# we need them here too.
#

markers=(
  show-exec-command
  c-marker
  rust-marker
  java-marker
)

rsync -ai ~/projects/einstein/user-scripts/runner

(
  cd ~/projects/einstein/docker/docker-image/res
  rsync -ai $markers $dst/
)

chmod a+x runner $execs
