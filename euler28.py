"""Number spiral diagonals
Problem 28
11 October 2002

Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13

It can be verified that the sum of the numbers on the diagonals is 101.

What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?"""





"""
       43 44 45 46 47 48 49
       42 21 22 23 24 25 26
       41 20 7  8  9  10 27
       40 19 6  1  2  11 28
       39 18 5  4  3  12 29
       38 17 16 15 14 13 30
       37 36 35 34 33 32 31        """

diag = 1                                  
y = 2
sum = 1
for i in range(500):
    x = 0
    while x < 4:
        diag +=y
        sum +=diag
        x+=1
    y +=2
print sum
    
    
    
    
