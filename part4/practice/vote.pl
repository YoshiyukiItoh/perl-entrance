#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;

my @array = ('ichigo','melon','lemon');
my $array_ref = \@array;

my %hash1 = (
	name => 'taro',
	favorite_foods => $array_ref
);

my $hash1_ref = \%hash1;

#print Dumper \$hash1_ref;

my $hash2_ref = {
	name => 'jiro',
	favorite_foods => ['ichigo','melon','suika']
};

my $hash3_ref = {
	name => 'saburo',
	favorite_foods => ['ichigo','kiwi','suika']
};

#print Dumper \$hash2_ref;

my @hash_arrays = ($hash1_ref, $hash2_ref, $hash3_ref);

#print Dumper \@hash_arrays;

my %shukei_foods;

for my $info (@hash_arrays) {
	my @food_array = @{${$info}{favorite_foods}};
	for my $food (@food_array) {
		$shukei_foods{$food}++;
	}
}

#print Dumper \%shukei_foods;

# http://www.koikikukan.com/archives/2013/12/18-013333.php

