#!/usr/bin/env perl6
## 'x' squared not equal to 'x' times 'x'

my $z = 1.3626526748019177000; die 'croak a' if $z*$z != $z**2;

my $i = 13626526748019177;
my $j = $i*$i;
say $j;

my $x = .05; my $y = 1.4;
#my $x = .05.FatRat; my $y = 1.4; #.FatRat;

#for (^∞) { $x = $y - $x*$x; die $x if $x*$x ≠ $x**2 }
#for (^∞) { $x = $y - $x²; die $x if $x*$x ≠ $x² }

say 'do this thing';

for (1..20) -> $i {
    $x = $y - $x * $x;
    say $i.fmt("%8d") ~ $x.fmt("%38.34f"); # if $x*$x != $x**2;
    say "fail i:$i x:$x" if $x*$x != $x**2;
}

