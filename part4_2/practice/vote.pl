#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

my $hash_ref1 = {
  name => 'ito',
  favorite_foods => ["bread", "pizza", "beef", "pork"]
};

my $hash_ref2 = {
  name => 'tanaka',
  favorite_foods => ["beef", "cheese", "pork", "bread"]
};

my $hash_ref3 = {
  name => 'sato',
  favorite_foods => ["pork", "rice", "pizza"]
};

my @array = ($hash_ref1, $hash_ref2, $hash_ref3);

my %food_ranking = ();
for my $hash (@array) {
  for my $food (@{$hash->{'favorite_foods'}}){
    $food_ranking{$food}++;
  }
}

#print Dumper \%food_ranking;

for my $key (reverse sort {$food_ranking{$a} <=> $food_ranking{$b}} keys %food_ranking) {
  print "$key : $food_ranking{$key}" . "\n";
}
