#!/usr/bin/env perl
use strict;
use warnings;

my @animal = (['shiba', 'bull'], ['mike', 'kuro'], ['eagle', 'crow']);

print $animal[2][0] . "\n";

for my $ani (@animal) {
  #print $ani;
  for my $name (@{$ani}) {
    print $name . " ";
  }
  print "\n";
}
