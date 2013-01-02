#!/usr/bin/python
#-*- coding: utf-8 -*-
"""
Prime permutations
Problem 49
The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.

There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.

What 12-digit number do you form by concatenating the three terms in this sequence?"""

from tools import is_prime
import itertools

primelist = (i for i in range(1000,10000) if is_prime(i))

def check_is_perm(number):
    return  is_prime(number+3330) and sorted([int(i) for i in str(number)])==sorted([int(i) for i in str(number+3330)])


permprimelist = []
for i in primelist:
    if check_is_perm(i):
        if check_is_perm(i+3330):
            permprimelist.append([i,i+3330,i+6660])

solution = ''
for i in permprimelist[1]:
    solution +=str(i)
print solution
