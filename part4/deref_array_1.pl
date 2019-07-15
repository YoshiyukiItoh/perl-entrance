#!/usr/bin/env perl;
use warnings;
use strict;

my @array = ( 1 .. 100 );           # 1から100までの数字が格納された配列を用意する
my $array_ref   = \ @array;          # 配列リファレンスを作成する
my @deref_array = @{$array_ref};    # 配列リファレンスをデリファレンスする

print "@deref_array\n";             # 1から100までの数字が表示される
