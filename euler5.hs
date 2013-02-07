{- 

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}

isEvenDiv x y = x `mod` y ==0
result = head [x | x <- [1,2..], all(isEvenDiv x) [1,2..20]]

-- that was way too slow, over one minute. Now using built in function lcm:
result1 = foldl lcm 1 [1,2..20]

main = do
  print result1
