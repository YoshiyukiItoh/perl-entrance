#!/usr/bin/env perl;
use strict;
use warnings;

#Your Name?> Taro
#Hello Taro!
#Your OS?> macOS
#macOS is useful OS!

print "Your Name?> ";
my $name = <STDIN>;
chomp $name;
print "Hello $name!\n";

print "Your OS?> ";
my $os = <STDIN>;
chomp $os;
print "$os is useful OS!\n";
