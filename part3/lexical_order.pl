#!/usr/bin/env perl
use strict;
use warnings;

my $str1 = <STDIN>;
chomp $str1;
my $str2 = <STDIN>;
chomp $str2;

if ($str1 eq $str2) {
	print "equal\n";
} elsif ($str1 lt $str2) {
	print $str1 . "\n";
	print $str2 . "\n";
} else {
	print $str2 . "\n";
	print $str1 . "\n";
}

