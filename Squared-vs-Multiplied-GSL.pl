#!/usr/local/bin/perl
## GSL version: substituting another math library, never seen to fail
#  David H.  2018-05-07

use Math::GSL::PowInt qw /gsl_pow_2/;

my $x=.05;
my $y=1.4;

for $i (1..10_000) {
    #$x = $y - $x * $x;
    $x = $y - gsl_pow_2($x);
    printf "fail i:$i x:%.17f\nxx:%.17f\nx2:%.17f\n", $x, ($x*$x), gsl_pow_2($x) if $x*$x != gsl_pow_2($x);
}
