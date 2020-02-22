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

print Dumper $hash_ref1;
print Dumper $hash_ref2;
print Dumper $hash_ref3;
