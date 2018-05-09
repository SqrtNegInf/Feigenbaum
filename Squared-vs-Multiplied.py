#!/usr/bin/env python 
## 'x' squared not equal to 'x' times 'x'

x = .05
y = 1.4

for i in range(1,1000):
    x = y - x * x;
    a = x * x
    b = x ** 2
#    print i, x
    if a != b: 
        print 'fail', i, x
