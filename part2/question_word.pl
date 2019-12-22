#!/usr/bin/env perl
use strict;
use warnings;
my $answer = 'perl';    # 好きな文字を入力しておく

my $in = <STDIN>;
chomp $in;

if ($in eq $answer) {
  print "OK\n";
} else {
  print "NG\n";
}

