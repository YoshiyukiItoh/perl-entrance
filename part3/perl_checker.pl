#!/usr/bin/env perl
use strict;
use warnings;

my $str = <STDIN>;
chomp $str;

if ( $str =~ /[pP]erl/) {
	print "Perl Monger!\n"
}

