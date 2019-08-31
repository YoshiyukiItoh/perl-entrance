#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;

sub add {
  my ( $left, $right ) = @_;
  return $left + $right;
}

sub min {
  my ( $left, $right ) = @_;
  return $left - $right;
}

sub mul {
  my ( $left, $right ) = @_;
  return $left * $right;
}

sub div {
  my ( $left, $right ) = @_;
  return $left / $right;
}

print add(1,2) . "\n";
print min(2,1) . "\n";
print mul(2,2) . "\n";
print div(10,2) . "\n";
