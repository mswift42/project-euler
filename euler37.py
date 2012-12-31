#!/usr/bin/python
# -*- coding: utf-8 -*-

"""Truncatable primes
Problem 37
14 February 2003

The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes."""

def is_prime(number):
    if number < 2:
        return False
    if number == 2:
        return True
    if not number & 1:
        return False
    for i in range(3, int(number**0.5)+1,2):
        if number % i ==0:
            return False
    return True

prime_list = (i for i in range(10,1000000) if is_prime(i))

def number_list(number):
    number = str(number)
    nl = []
    for i in range(1,len(number)):
        nl.append(number[:-i])
        nl.append(number[i:])
    return nl

def check_for_truncatability(number_list):
    for i in number_list:
        if i[0]=='0':
            return False
        if not is_prime(int(i)):
            return False
    return True
print sum([i for i in prime_list if check_for_truncatability(number_list(i)) ])

    
