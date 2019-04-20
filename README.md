# Feigenbaum constant calculation reveals a F.P. bug

This task was added to RosettaCode
(http://rosettacode.org/wiki/Feigenbaum_constant_calculation) recently, and
while the code itself is pretty mundane, it revealed a floating point bug.

## The Bug

The bug is this: for certain floating point values results from 'X × X'
differ from 'X²'. More generally, the answers from the underlying 'power'
operation can differ from repeated multiplication. This does not jibe with
what I learned in middle school...

Since the Feigenbaum constant calculation is iterative, errors accumulate and 
the results diverge.

## Bug Hunt

The bug is present in all these languages:

* C
* Perl 
* Perl6 (MoarVM)
* Python

But not in these:

* Fortran 
* Java
* Perl6 (JVM)
* Perl (with Math-GSL)

What's the difference? It seems like the languages in the first group use
the libc/glibc system/math libraries, while those in the second roll their
own (correct me if I'm wrong).

But then it's hard to explain the Sidef results:

* not buggy, despite being built on top of Perl
* converges more closely to the OEIS limit value than any other code

Files in this repository are my attempt to reveal the extent of the
problem.  Run them on your favorite OS and see what you get.

## Scope

I found the bug to be present in recent versions of OS X, from at least El
Capitan (10.11) onwards, and it is still there is the latest release.  Snow
Leopard (10.6.8) pre-dates the bug.

I did **not** find it in Linux, nor in Perl/Cygwin (for Windows 7).

## The Actual Answer is...

The actual Feigenbaum constant calculation (as per https://oeis.org/A006890) starts off:

δ = 4.6692016091029906 

FORTRAN and Sidef both give 4.6692016062 after 15 iterations, the closest approximation. 
Additionally, futher iterations remain near this value, but other programs seem xxx

## Moral of the Story

Working with floating point is like having a pet tiger. Can be interesting,
but you can never let your guard down.
