"""If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage."""

numbers = {1:'one',2:'two',3:'three',4:'four',5:'five',6:'six',7:'seven',8:'eight',9:'nine',10:'ten',11:'eleven',12:'twelve',13:'thirteen',14:'fourteen',15:'fifteen',16:'sixteen',17:'seventeen',18:'eighteen',19:'nineteen',20:'twenty',30:'thirty',40:'forty',50:'fifty', 60:'sixty', 70: 'seventy', 80: 'eighty', 90: 'ninety', 100: 'onehundred', 200: 'twohundred', 300: 'threehundred', 400: 'fourhundred', 500: 'fivehundred', 600: 'sixhundred', 700: 'sevenhundred', 800: 'eighthundred', 900: 'ninehundred', 1000: 'onethousand'}

und = 3

def length(num):
    return len(numbers[num])


def sum1001000():
    count , a, b = 0, 0, 0
    for i in range(100,1001):

        if i in numbers:
            count += length(i)

        else:
            a = i % 100
            b = i - a
            count += length(b)
            count += sumdd(a)
            count += und
    return count
            
        
def sumdd(num):
    count = 0
    a = 0
    b = 0
    if num in numbers:
        count += length(num)
        
    else:
        b = num % 10
        a = num - b
        count += length(b)
        count += length(a)
    return count

def sumto100():
    count = 0
    for i in range(1,100):
        count += sumdd(i)
    return count

print sumto100() + sum1001000()

