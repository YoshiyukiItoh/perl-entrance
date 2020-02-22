#!/usr/bin/env perl
use warnings;
use strict;

my @sentences = (
  'alice loves meat!',
  'bob loves sushi!',
);

for my $sentence  (@sentences) {
  $sentence =~ /(\w+) loves (\w+)/;

  print $1 . ' -> ' . $2 . "\n";
}
