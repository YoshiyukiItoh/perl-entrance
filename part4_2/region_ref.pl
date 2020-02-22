#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

my %japan = (
  tokyo    => ['gotanda', 'shibuya'],
  osaka    => ['shinsaibashi'],
  okinawa  => ['naha', 'yomitan'],
  hokkaido => ['sapporo', 'obihiro'],
  fukuoka  => ['hakata']
);

# 1
print "-- #1 -------------------\n";
for my $tiku (@{$japan{tokyo}}) {
  print $tiku . "\n";
}

#2
print "-- #2 -------------------\n";
push @{$japan{osaka}}, 'umeda';
print Dumper \%japan;

#3
print "-- #3 -------------------\n";
push @{$japan{okinawa}}, 'piyo';
print Dumper \%japan;

#4
print "-- #4 -------------------\n";
push @{$japan{hokkaido}}, 'chitose';
shift @{$japan{hokkaido}}, 'sapporo';
print Dumper \%japan;

#5
print "-- #5 -------------------\n";
delete $japan{fukuoka};
print Dumper \%japan;
