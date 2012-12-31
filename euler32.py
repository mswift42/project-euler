
#!/usr/bin/python
# -*- coding: utf-8 -*-

"""Pandigital products
Problem 32
06 December 2002

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39  186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum."""

def check_pandigital(multiplicand,multiplier,product):
    checklist = []
    for i in str(multiplicand):
        checklist.append(i)
    for i in str(multiplier):
        checklist.append(i)
    for i in str(product):
        checklist.append(i)


    return sorted(checklist)==[str(i) for i in range(1,10)]

setpan = set()
prod = 0 
for i in range(1,2000):
    for j in range(1,2000):
        prod = i *j
        if check_pandigital(i,j,prod):
            setpan.add(prod)

        
print (sum(setpan))




