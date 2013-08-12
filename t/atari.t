use strict;
use warnings;
use Test::More;
use File::Slurp qw( slurp );

my @Q = <t/*.q>;    # >
diag @Q;

for my $Q (@Q) {
    ( my $A = $Q ) =~ s/\.q$/.a/;
    my $ANS = slurp($A);
    my $ans = `$^X atari.pl $Q`;
    is_deeply( [ split /\n/, $ans ], [ split /\n/, $ANS ], $Q );
}

done_testing;
