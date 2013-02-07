import Data.List

numb = 600851475143
sqrnumb = floor.sqrt$fromIntegral numb

primes = 2 : [n | n<-[3,5..sqrnumb], all ((> 0).rem n) [3,5..floor.sqrt$fromIntegral n]]

result = last $ takeWhile (< (sqrnumb)) [x | x <- primes, numb `mod` x ==0]

main = do
  print result


