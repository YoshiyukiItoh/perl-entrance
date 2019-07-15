#!/usr/bin/env perl
use warnings;
use strict;

my %data = (
    alice => 'sushi',
    bob   => 'soba',
    carol => 'sushi',
    dave  => 'sushi',
    ellen => 'soba',
    frank => 'udon',
);

my %food_count = ();

# for my $name (keys %data) {
while (my ($key, $value) = each(%data)) {
  #print $key," ",$value,"\n";
  #print $data{$key}."\n";
  my $food = $data{$key};
  $food_count{$food}++;
#  if (exists($food_count{$food})) {
#    $food_count{$food}++;
#  } else {
#    $food_count{$food}=0;
#  }
}

while (my ($key, $value) = each(%food_count)) {
  print $key," ",$value,"\n"
}

#print $count , "\n";
