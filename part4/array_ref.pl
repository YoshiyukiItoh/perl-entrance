#!/usr/bin/env perl
use warnings;
use strict;

my @animal = (['shiba','bull'],['mike','kuro'],['eagle','crow']);

#print $animal[2][0]."\n";
print $animal[2]->[0]."\n";

for my $kind_array (@animal) {
  #print $var;
  for my $array (@{$kind_array}) {
    print $array." ";
  }
  print "\n";
}
