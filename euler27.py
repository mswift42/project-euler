"""Quadratic primes
Problem 27
27 September 2002

Euler published the remarkable quadratic formula:

n**2 + n + 41

It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41**2 + 41 + 41 is clearly divisible by 41.

Using computers, the incredible formula  n**2  79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79. The product of the coefficients, 79 and 1601, is 126479.

Considering quadratics of the form:

n**2 + an + b, where |a|  1000 and |b|  1000

where |n| is the modulus/absolute value of n
e.g. |11| = 11 and |4| = 4
Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0."""

def is_prime(x):
    if x <2 :
        return False
    if x == 2:
        return True
    if not x & 1:
        return False
    for i in range(3, int(x**0.5+1),2):
        if  x % i == 0:
            return False
    return True


prime_list = [i for i in range(1,1000) if is_prime(i)]
n = 1 
product  = 1 
max = 0
for a in range(-999,1000,2):
    for b  in prime_list:
        n = 1
        while is_prime(n**2 + (a * n) + b):
            n+=1 
        if n > max:
            max = n
            
            product = a*b
            
            
print product
                

    
        

