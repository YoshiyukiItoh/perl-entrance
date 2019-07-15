#!/usr/bin/env perl
use strict;
use warnings;

print "Please tell Your Name ? > ";
my $name = <STDIN>;
chomp $name;

print "What time is it now ? > ";
my $time = <STDIN>;
chomp $time;

print "You are " . $name . ".\n";
print "It is " . $time . " o'clock.\n";

