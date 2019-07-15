#!/usr/bin/env perl
use warnings;
use strict;

use Data::Dumper;

my %japan = (
  tokyo => ['gotanda', 'shibuya'],
  osaka => ['shinsaibashi'],
  okinawa => ['naha', 'yomitan'],
  hokkaido => ['sapporo', 'obihiro'],
  fukuoka => ['hakata']
);

#print Dumper \%japan;
for my $toshi (@{$japan{tokyo}}) {
  print $toshi . " ";
}
print "\n";

#my osaka_deref = @{$japan{osaka}};
push(@{$japan{osaka}}, 'umeda');
push(@{$japan{okinawa}}, 'piyo');
push(@{$japan{hokkaido}}, 'chitose');
delete($japan{hokkaido}->[0]);

delete $japan{fukuoka};

print Dumper \%japan;


