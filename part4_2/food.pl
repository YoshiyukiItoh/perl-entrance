#!/usr/bin/env perl
use strict;
use warnings;

my %data = (
    alice => 'sushi',
    bob   => 'soba',
    carol => 'sushi',
    dave  => 'sushi',
    ellen => 'soba',
    frank => 'udon',
);

my %fcnt = ();

for my $key (keys %data) {
  #print $key . ":" . $data{$key} . "\n";
  $fcnt{$data{$key}}++;
}

for my $key (keys %fcnt) {
  print $key . ":" . $fcnt{$key} . "\n";
}
