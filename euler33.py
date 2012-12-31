#!/usr/bin/python
# -*- coding: utf-8 -*-

"""Digit canceling fractions
Problem 33
20 December 2002

The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

If the product of these four fractions is given in its lowest common terms, find the value of the denominator."""

    
num = 1
den = 1
for i in range(1, 10):
    for j in range(1, 10):
        if i != j:
            for k in range(1, 10):
                if (10*i+j)*k == (10*k+i)*j:
                    print i, j, "/", k, i
                    num *= j
                    den *= k

print num, "/", den
