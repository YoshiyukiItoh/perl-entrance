#!/usr/bin/env perl
use strict;
use warnings;

my $last_taisho = 1925;
my $seireki = 2019;

print "西暦" . $seireki . "年は昭和" . ($seireki - $last_taisho) . "年です\n";
