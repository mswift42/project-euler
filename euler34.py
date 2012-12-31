"""Digit factorials
Problem 34
03 January 2003

145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.

"""

import math
import itertools
curlist = []
total = 0
faclist = list((math.factorial(i)for i in range(100)))
def checkfac(num):
    return num in faclist

for i in range(100000):
    total = 0
    for j in str(i):
        total +=math.factorial(int(j))
    if str(i)==str(total):
        curlist.append(i)
print sum(curlist[2:])                    # exclude 1 and 2 as in  problem description.

    
        
        


        

