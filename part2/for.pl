#!/usr/bin/env perl
use strict;
use warnings;

my @array = (1,2);
print "@array\n";

my $first = <STDIN>;
chomp $first;
my $second = <STDIN>;
chomp $second;

my @array2 = ($first,$second);

for my $elem (@array2) {
  print $elem . "\n";
}
