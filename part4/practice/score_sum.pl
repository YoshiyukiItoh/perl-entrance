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
my $bob = {
    name        => 'Bob',
    country     => 'America',
    perl        => 40,
    python      => 10,
    ruby        => 20,
    php         => 30,
    binary      => 50,
};
my $carol = {
    name        => 'Carol',
    country     => 'England',
    perl        => 100,
    python      => 70,
    ruby        => 80,
    php         => 50,
    binary      => 50,
};
my $dave = {
    name        => 'Dave',
    country     => 'Canada',
    perl        => 60,
    python      => 11,
    ruby        => 1,
    php         => 100,
    binary      => 100,
};
my $ellen = {
    name        => 'Ellen',
    country     => 'America',
    perl        => 1,
    python      => 15,
    ruby        => 0.5,
    php         => 60,
    binary      => 0.01,
};

my @languages = ("perl", "python", "ruby", "php", "binary");
my @people = (\$alice, \$bob, \$carol, \$dave, \$ellen);


foreach my $student (@people) {
	print "${$student}->{name}\n";
	my %deref_student = ${$student};
	
	my $sum = 0;
	foreach my $lang (@languages) {
		$sum += $deref_student->{$lang};
	}
	$->{"sum"} = $sum;
}

#foreach my $lang (@languages) {
#	$sum += $alice->{$lang};
#	#print "$alice->{$lang}\n";
#}
#print "$sum\n";

$alice->{"sum"} = $sum;

print Dumper \$alice;

