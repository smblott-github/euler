#!/usr/bin/env zsh

src=$argv[1]
dst=$argv[2]

{
  cat $src

  cat <<EOF

include::misc/instrument.txt[]
include::misc/asciimath.txt[]
EOF

} > $dst.tmp && mv -v $dst.tmp $dst
