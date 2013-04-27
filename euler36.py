"""Double-base palindromes
Problem 36
31 January 2003

The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

(Please note that the palindromic number, in either base, may not include leading zeros.)"""

def check_bin(number):
    num = str(bin(number))[2:]
    return num == num[::-1] 

def check_int(number):
    num = str(number)
    return num == num[::-1]

sum = 0
for i in range(1,1000000):
    if check_int(i) and check_bin(i):
        sum +=i
print sum
import random

from gi.repository import Gtk




