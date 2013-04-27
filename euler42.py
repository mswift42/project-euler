
#!/usr/bin/python
# -*- coding: utf-8 -*-

"""Coded triangle numbers
Problem 42
The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.

Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?

"""

def get_value(word):
    value = 0
    for i in word:
        value += ord(i) - 64
    return value 

trianglelist = [int(0.5*i*(i+1)) for i in range(1,10000)]

def iter_words(filename):
    with open(filename) as f:
        for line in f:
            for word in line.split('","'):
                yield word

count = 1

for word in iter_words('words.txt'):
    if get_value(word) in trianglelist:
        count +=1

print count


