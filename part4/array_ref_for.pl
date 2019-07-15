#!/usr/bin/env perl
use warnings;
use strict;

# お約束の3行は省略してますが、必ず書くこと

my $month_name = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
];
for my $num ( 0 .. 11 ) {
    #print "${$month_name}[$num]\n";    # 月の省略した英名を表示する
    print "$month_name->[$num]\n";    # 月の省略した英名を表示する
}

