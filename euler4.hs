import Data.List

isPalin :: Integer -> Bool
isPalin x = (reverse . show) x == show x

pall =  maximum [x * y | x <-[100,101..999], y <- [100,101..999] , isPalin (x*y)]

main = do
  print pall
