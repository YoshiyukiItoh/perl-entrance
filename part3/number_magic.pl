#!/usr/bin/env perl
use strict;
use warnings;

my $foo = 10;
my $hoge = $foo;

$hoge += 1;
$hoge *= 2;
$hoge += 6;
$hoge /= 2;
$hoge -= $foo;

print "$hoge\n"
