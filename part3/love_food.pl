#!/usr/bin/env perl;
use strict;
use warnings;

my @words_ref = ('alice loves meat!', 'bob loves sushi!');

foreach my $var(@words_ref) {
	#print $var . "\n";
	#if ( $var =~ /(.+) loves (.+)!/ ) {
	#	print $1 . " -> " . $2 . "\n";
	#}
	print $1 . " -> " . $2 . "\n" if $var =~ /(.+) loves (.+)!/;
}

