#!/usr/local/bin/perl
## ## 'x' squared not equal to 'x' times 'x'

my $x=.05;
my $y=1.4;

for $i (1..100) {
    $x = $y - $x * $x;
    printf "fail i:$i x:%.17f\nxx:%.17f\nx2:%.17f\n", $x, ($x*$x), $x**2 if $x*$x != $x**2;
}
