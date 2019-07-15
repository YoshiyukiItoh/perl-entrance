#!/usr/bin/env perl
use strict;
use warnings;

my $str = 'I love ruby';
my $repstr;

if ($str =~ /I love (.+)/) {
	$repstr = $1;
}

$str =~ s/$repstr/perl/;

print $str . "\n";
