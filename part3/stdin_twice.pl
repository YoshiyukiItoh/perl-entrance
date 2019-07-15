#!/usr/bin/env perl
use strict;
use warnings;

my $str = <STDIN>;
chomp $str;

my $i;
for ( $i = 0; $i < 2; $i++) {
  print $str . "\n";
}

