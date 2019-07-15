#!/usr/bin/env perl
use warnings;
use strict;

my $ymd = '07-13-2019';
# 2019-07-13

$ymd =~ /(\d+)-(\d+)-(\d+)/;

print $3."-".$1."-".$2."\n";
