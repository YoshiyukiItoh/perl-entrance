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
	favorite_foods => ['ichigo2','melon2','lemon2']
};

#print Dumper \$hash2_ref;

my @hash_arrays = ($hash1_ref, $hash2_ref);

print Dumper \@hash_arrays;

