{-Summation of primes
Problem 10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.-}



ldp :: Integer -> Integer
ldp n = ldpf primes1 n


ldpf :: [Integer] -> Integer -> Integer
ldpf (p:ps) n | rem n p ==0 = p
              | p^2 > n     = n
              | otherwise   = ldpf ps n

primes1 :: [Integer]
primes1 = 2 : filter prime [3..1999999]

prime :: Integer -> Bool
prime n | n < 1     = error "not a positive integer"
        | n == 1    = False
        | otherwise = ldp n == n

result = sum primes1

main = do
  print result

