# Feigenbaum constant calculation reveal a FP bug

This task was added to RosettaCode
(http://rosettacode.org/wiki/Feigenbaum_constant_calculation) recently, and
while the code itself is pretty mundane, it revealed a floating point bug.

## The Bug

The bug is this: for certain floating point values results from 'X × X'
differ from 'X²'. More generally, the underlying 'power' operation differs
from repeated multiplication. This does not jibe with what I learned in middle school...

I think that the source of the problem is the system math library.

## The Evidence

The bug is present in code of these languages:

* C
* Perl 
* Perl6 (MoarVM)
* Python

But the bug is not present in:

* FORTRAN 
* Perl (with Math-GSL)
* Perl6 (JVM)

The difference is that the languages in the first group all use the system
math libraries (correct me if I'm wrong), while those in the second do not.

## Programs

Files in this repository are my explorations to reveal the extent of the problem.
Run them on your favorite platform and see what you get.

## Scope

I found the bug to be present in recent versions of Mac OS X, from at least
El Capitan onwards, but I don't have access to a wide variety of other OS
versions.  It is still there is the latest OS.  I did **not** find it in
any Linux, nor in Perl in Cygwin/Windows 7.

## The Answer is...

The actual Feigenbaum constant calculation (as per https://oeis.org/A006890) is:

δ = 4.6692016091029906 

The FORTRAN program gives the closest approximation. Is that significant?
Not sure...

## Moral of the Story

Working with floating point is like having a pet tiger. Can be interesting,
but you can never let your guard down.
