#!/usr/bin/env perl
use strict;
use warnings;

my @month_name = (
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
);
my $month_hash_ref = {
    Jan => 1, Feb => 2, Mar => 3, Apr => 4, May => 5, Jun => 6,
    Jul => 7, Aug => 8, Sep => 9, Oct => 10, Nov => 11, Dec => 12,
};
for my $name (@month_name){
    #print $name . ' is ' . $month_hash_ref->{$name} . "th month\n";
    if ($name eq 'Jan') {
      print $name . ' is ' . $month_hash_ref->{$name} . "st month\n";
    } elsif ($name eq 'Feb') {
      print $name . ' is ' . $month_hash_ref->{$name} . "nd month\n";
    } elsif ($name eq 'Mar') {
      print $name . ' is ' . $month_hash_ref->{$name} . "rd month\n";
    } else {
      print $name . ' is ' . $month_hash_ref->{$name} . "th month\n";
    }
}

