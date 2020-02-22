#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

my %animal = (
  dog => { name => 'Taro', color => 'brown' },
  cat => { name => 'Tama', color => 'white' }
);

print $animal{cat}{color} . "\n";

for my $kind (sort keys %animal) {
  print $kind . "\n";
  for my $n (sort keys %{$animal{$kind}}) {
    #print $n . "\n";
    print "  " . $n . " => " . $animal{$kind}{$n} . "\n";
  }
}

print Dumper \%animal;
