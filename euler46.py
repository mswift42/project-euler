#!/usr/bin/python
#-*- coding: utf-8 -*-

"""Goldbach's other conjecture
Problem 46
It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.

9 = 7 + 212
15 = 7 + 222
21 = 3 + 232
25 = 7 + 232
27 = 19 + 222
33 = 31 + 212

It turns out that the conjecture was false.

What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

"""

from tools import is_prime

def compositenum(number):
    if is_prime(number):
        return False
    primelist = [i for i in range(start-1,1,-1) if is_prime(i)]
    for i in primelist:
        for j in range(1,int(number**0.5)+1):
            if i + 2*j**2 == number:
                return False
                
    return True
        


    
                
start = 33

while True:
    if compositenum(start):
        print start
        break
    start +=2
