#!/usr/bin/env perl
use warnings;
use strict;

# お約束の3行は省略してますが、必ず書くこと

my @array = ( 'A' .. 'Z' ); # A から Z までの文字が格納された配列を用意する
my $array_ref = \@array;    # 配列リファレンスを作成する

print @{$array_ref}[10]."\n";
print ${$array_ref}[10]."\n";

if ( @{$array_ref}[10] eq 'K' ) {
    print "配列の先頭から10番目の要素はKです"; # この行が実行される
}

