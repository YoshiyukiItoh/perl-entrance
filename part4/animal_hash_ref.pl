#!/usr/bin/env perl
use warnings;
use strict;

my %animal = (dog => {name => 'Taro', color => 'brown'}, cat => {name => 'Tama', color => 'white'});

#print $hash{cat}->{color}."\n";
print $animal{cat}{color}."\n";

for my $kind (keys %animal) {
  #print $kind . " " . $animal{$kind}. "\n";
  print $kind . "\n";
  for my $key (keys %{$animal{$kind}}) {
    #print $key;
    print $key . " -> " . $animal{$kind}{$key} . "\n";
  }
}
