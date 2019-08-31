#!/bin/bash

FILENAME=${1}

function usage() {
cat << EOF
 : usage
  # mkplfile <fileanme>
EOF
}

if [ "x" = "x${FILENAME}" ]; then
  usage
  exit 0
fi

cat << EOF >> $1
#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;

EOF

exit 0

