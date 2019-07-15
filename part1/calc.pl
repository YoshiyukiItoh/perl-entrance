#!/usr/bin/env perl
use strict;
use warnings;

my $x = <STDIN>;
my $y = <STDIN>;
chomp $x;
chomp $y;

print "$x + $y = " . ($x + $y) . "\n";
print "$x - $y = " . ($x - $y) . "\n";
print "$x * $y = " . ($x * $y) . "\n";
print "$x / $y = " . ($x / $y) . "\n";
