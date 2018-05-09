#!/usr/bin/env perl6
## 'x' squared not equal to 'x' times 'x'

my $x = .05; my $y = 1.4;

my $x1 = $x;
for (1..38) -> $i {
    $x = $y - $x²;
    say "fail i:$i x:$x" if $x*$x != $x**2;
}
