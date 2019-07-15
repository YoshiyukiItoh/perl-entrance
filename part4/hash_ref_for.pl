#!/usr/bin/env perl
use warnings;
use strict;

# お約束の3行は省略してますが、必ず書くこと
my @month_name = (
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
);
my $month_hash_ref = {
    Jan => 1, Feb => 2, Mar => 3, Apr => 4, May => 5, Jun => 6,
    Jul => 7, Aug => 8, Sep => 9, Oct => 10, Nov => 11, Dec => 12,
};
for my $name (@month_name){
    my $josu;
    print $name . ' is ' . $month_hash_ref->{$name} . $josu . " month\n";
}
