"""n! means n  (n  1)  ...  3  2  1

For example, 10! = 10  9  ...  3  2  1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!"""

def fac(num):
    if num == 0:
        return 1 
    else:
        return num * fac(num-1)

factorial100 = str(fac(100))
count = 0
for i in factorial100:
    count += int(i)
print count

