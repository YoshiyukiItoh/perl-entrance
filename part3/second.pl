#!/usr/bin/env perl
use strict;
use warnings;

my $second = 150;
my $min = int($second/60);
my $sec = $second%60;

print "$min\n";
print "$sec\n";
