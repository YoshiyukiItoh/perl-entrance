#!/usr/bin/env perl
use strict;
use warnings;

my @array = ( 'A' .. 'Z' ); # A から Z までの文字が格納された配列を用意する
my $array_ref = \@array;    # 配列リファレンスを作成する

if ( @{$array_ref}[10] eq 'K' ) {
    print "配列の先頭から10番目の要素はKです" . "\n"; # この行が実行されると正解
}
