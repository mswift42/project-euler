import Data.Char

{- Power digit sum
Problem 16

215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 21000?
-}

num = show $ 2 ^ 1000

result = sum $ map digitToInt num

main = print result


