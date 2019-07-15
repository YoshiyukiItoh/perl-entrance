#!/usr/bin/env perl;
use strict;
use warnings;

print 'Please input some words > ';
while ( chomp ( my $input = <STDIN>) ) {

	if ($input eq '0') {last;}

	if ($input =~ /[pP]erl/) {print "Find Perl!\n";}
	if ($input =~ /python/i) {print "Find Python!\n";}
	if ($input =~ /perl|ruby|python/) {print "Love Programming!\n";}

	if ($input =~ /^papix/) {print "Find papix!\n";}
	if ($input =~ /Hello (.+)/) {print "Hello! $1!\n";}

	print 'Please input some words > ';
}
