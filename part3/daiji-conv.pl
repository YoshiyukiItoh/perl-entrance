#!/usr/bin/env perl;
use strict;
use warnings;
use utf8;
binmode STDIN, ':utf8';
binmode STDOUT, ':utf8';

my $input = <STDIN>;
chomp $input;
my $strlen = length($input);
my $ret;

print length($input) . "\n";

if ($strlen==1) {
	$input =~ s/〇一二三四五六七八九/0123456789/g;
} elsif ($strlen>1) {
	if ($input =~ /^十/) {
		$input =~ s/十/1/;
		#$ret = conv ($input);
	}
}

print $input . "\n";

