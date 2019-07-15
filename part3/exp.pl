#!/usr/bin/env perl
use warnings;
use strict;

my @array = ( 'foo', 'bar', 'baz' );    # 配列を定義
my $array_ref = \@array;    # 配列のリファレンスを作成
print $array_ref . "\n";    # メモリの番地 ARRAY(0x7ffa86818118)

my @deref_array = @{$array_ref};    # デリファレンスして新しい配列に入れた
print "@deref_array\n";      # foo bar baz

print "@array\n";
