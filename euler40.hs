import Data.Char

{- Champernowne's constant
Problem 40

An irrational decimal fraction is created by concatenating the positive integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part, find the value of the following expression.

d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000
-}

charlist = concatMap show [0..]

productlist = [charlist !! 1, charlist !! 10, charlist !! 100,
               charlist !! 1000, charlist !! 10000, charlist !! 100000,
               charlist !! 1000000]

result = product $ map digitToInt productlist

main = print result


