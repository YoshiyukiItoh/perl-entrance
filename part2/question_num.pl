#!/usr/bin/env perl
use strict;
use warnings;
my $answer = 10;    # 好きな値を入力しておく

my $in = <STDIN>;
chomp $in;

if ($in == $answer) {
  print "OK\n";
} elsif ( $answer-5 <= $in && $in <= $answer+5) {
  print "near\n";
} elsif ($in > $answer) {
  print "too big.\n";
} elsif ($in < $answer) {
  print "too small.\n";
} else {
  print "NG\n";
}

