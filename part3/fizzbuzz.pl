#!/usr/bin/env perl
use strict;
use warnings;

my $i;
for ($i=1;$i<=100;$i++) {
	if ($i % 3 == 0 and $i % 5 == 0) {
		print "FizzBuzz\n";
	} elsif ($i % 3 == 0) {
		print "Fizz\n";
	} elsif ($i % 5 == 0) {
		print "Buzz\n";
	} else {
		print $i . "\n";
	}
}
