#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

my $hash_ref1 = {
  name => 'ito',
  favorite_foods => ["bread", "pizza"]
};

my $hash_ref2 = {
  name => 'tanaka',
  favorite_foods => ["beef", "cheese"]
};

my $hash_ref3 = {
  name => 'sato',
  favorite_foods => ["pork", "rice"]
};

my @array = ($hash_ref1, $hash_ref2, $hash_ref3);

#print Dumper \@array;

for my $hash (@array) {
  print "-----" . "\n";
  for my $key (sort keys %{$hash}) {
    #print $key . "\n";
    print Dumper $hash->{$key};
  }
}
