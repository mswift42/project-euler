"""Pandigital prime
Problem 41
We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?"""

import itertools

def is_pandigital(number):
    number_list = [int(i) for i in str(number)]
    return sorted(number_list) == range(1,10)


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


permlist = list(itertools.permutations('7654321'))

for i in permlist:
    number = int(''.join(i))
    if is_prime(number):
        print number
        break
    
