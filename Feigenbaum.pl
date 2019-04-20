#!/usr/local/bin/perl
## fails with native squaring, works with Math-GSL, and even better with Math::AnyNum

use warnings;
use strict 'vars';

#use Math::GSL::PowInt <gsl_pow_2 gsl_pow_4 gsl_pow_int>;
use Math::AnyNum 'sqr';

my $maxi  = 13;
my $maxij = 10;
my $a1 = 1.0;
my $a2 = 0.0;
my $d1 = 3.2;

print " i         d\n";

my @res;
for my $i (2 .. $maxi) {
    my $a = $a1 + ($a1 - $a2)/$d1;
    for my $j (1 .. $maxij) {
        my $x = 0; my $y = 0;
        for my $foo (1 .. 2**$i) {
            $y = 1 - 2 * $y * $x;
            #$x = $a - $x*$x;
            #$x = $a - $x**2;
            #$x = $a - gsl_pow_2($x);
            $x = $a - sqr($x); # trizen++
        }
        $a -= $x/$y;
     }

     $d1 = ($a1 - $a2)/($a - $a1);
     $a2 = $a1;
     $a1 = $a;
     printf "%2d %20.17f\n", $i, $d1;
}

print "δ = $d1\n";
