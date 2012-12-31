"""Circular primes
Problem 35
17 January 2003

The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?

"""

def is_prime(number):
    if number < 2:
        return False
    if number == 2:
        return True
    if not number & 1:
        return False
    for i in range(3,int(number**0.5)+1,2):
        if number % i ==0:
            return False
    return True

cycle_list =  [i for i in range(100) if is_prime(i) and is_prime(int(str(i)[::-1]))]

def rotate(number):
    lnum = [i for i in str(number)]
    rotate_list = []
    for i in range(len(str(number))):
        lnum.insert(0, lnum.pop())
        rotate_list.append(list(lnum))
    return rotate_list

def check_list(rotate_list):
    rotnum = [int(''.join(i)) for i in rotate_list]
    return all(is_prime(i) for i in rotnum)

prime_list = (i for i in range(100,1000000) if is_prime(i))
for i in prime_list:
    if check_list(rotate(i)):
        cycle_list.append(i)

print len(cycle_list)

