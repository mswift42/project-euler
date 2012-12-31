 #!/usr/bin/python
 # -*- coding: utf-8 -*-


"""Coin sums
Problem 31
22 November 2002

In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
It is possible to make £2 in the following way:

1£1 + 150p + 220p + 15p + 12p + 31p
How many different ways can £2 be made using any number of coins?"""

def changes(amount, coins):
    ways = [0] * (amount + 1)
    ways[0] = 1
    print ways
    for coin in coins:
        for j in xrange(coin, amount + 1):
            ways[j] += ways[j - coin]
            print ways[j-coin]
    return ways[amount]
 

print changes(200, [1,2,5,10,20,50,100,200])

# Shamefully stolen from Wikipedia! 


