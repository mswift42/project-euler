import Data.List

-- fib :: Integer -> Integer
fib = 0 : 1 : zipWith (+) fib (tail fib)
sumfib = sum (takeWhile (<4000000) (filter even fib))

main = do
  print sumfib
