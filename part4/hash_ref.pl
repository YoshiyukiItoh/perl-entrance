#!/usr/bin/env perl
use warnings;
use strict;

# お約束の3行は省略してますが、必ず書くこと

my %hash = ( name => 'Larry', lang => 'Perl' ); # ハッシュを作成
my $hash_ref = \%hash;

print ${$hash_ref}{name} . "\n";    # Larry と表示される
print ${$hash_ref}{lang} . "\n";    # Perl と表示される

