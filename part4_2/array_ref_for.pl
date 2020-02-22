#!/usr/bin/env perl
use warnings;
use strict;

my $month_name = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
];

for my $num ( 0 .. 11 ) {
    #print $month_name->[$num] . " ";    # 月の省略した英名を表示する
    print ${$month_name}[$num] . " ";    # 月の省略した英名を表示する
}

print "\n";

for my $month (@{$month_name}) {
    print $month . " ";
}

print "\n";
