#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

my $alice = {
    name        => 'Alice',
    country     => 'England',
    perl        => 60,
    python      => 80,
    ruby        => 80,
    php         => 50,
    binary      => 30,
};

my @languages = ("perl", "python", "ruby", "php", "binary");

my $sum = 0;

foreach my $lang (@languages) {
	$sum += $alice->{$lang};
	#print "$alice->{$lang}\n";
}
#print "$sum\n";

$alice->{"sum"} = $sum;

print Dumper \$alice;

