#!/usr/bin/env perl6
## powers beyond squared fail even more often

my $x = .05; my $y = 1.4;
#my $x = .05.FatRat; my $y = 1.4.FatRat; # glacial!

#for (^∞) { $x = $y - $x*$x; die $x if $x*$x ≠ $x**2 }

for (1..100) -> $i {
    $x = $y - $x * $x;

    say "fail 2 i:$i x:$x" if $x*$x != $x**2;
    say "fail 3 i:$i x:$x" if $x*$x×$x != $x**3;
    say "fail 4 i:$i x:$x" if $x*$x×$x×$x != $x**4;
    say "fail 5 i:$i x:$x" if $x*$x×$x×$x×$x != $x**5;
    say "fail 6 i:$i x:$x" if $x*$x×$x×$x×$x×$x != $x**6;
}
