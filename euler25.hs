memoFib :: Int -> Integer
memoFib = (map fib [0 ..] !!)
  where fib 0 = 0
        fib 1 = 1
        fib n = memoFib(n-2) + memoFib(n-1)

fiblength :: Int -> Int
fiblength n = length $ show (memoFib n)

fiblist = [(fiblength x,  x) | x <- [1..], fiblength x == 1000]

result = snd $ head fiblist

main = 
  print result

  

















           
