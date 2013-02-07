{- 10001st prime
Problem 7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
-}



primes = 2 : [n | n<-[3,5..], all ((> 0).rem n) [3,5..floor.sqrt$fromIntegral n]]

result = primes !! 10000

main = do
  print result
