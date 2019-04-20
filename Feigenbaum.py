#!/usr/bin/env python 
# this solution not on rosettacode -- see a nicer version here:
# http://rosettacode.org/wiki/Feigenbaum_constant_calculation#Python

a1 = 1.0
a2 = 0.0
d1 = 3.2

#for i in range(1,1000):
#    x = y - x * x;
#    a = x * x
#    b = x ** 2
#    if a != b: 
#        print 'fail', i, x
#print " i         d\n";

for i in range(2, 13):
    a = a1 + (a1 - a2)/d1
    for j in range(1,10):
        x = 0
        y = 0
        for k in range(1,2**i):
            y = 1 - 2 * y * x
            x = a - x*x
            #x = a - x**2 # potentially wrong
        a -= x/y;
     d1 = (a1 - a2)/(a - a1);
     a2 = a1
     a1 = a
     printf "%2d %20.17f\n", i, d1
