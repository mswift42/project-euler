memo_fib :: Int -> Integer
memo_fib = (map fib [0 ..] !!)
  where fib 0 = 0
        fib 1 = 1
        fib n = memo_fib(n-2) + memo_fib(n-1)
        
fiblength n = length $ show (memo_fib n)

fiblist = [(fiblength x,  x) | x <- [1..], fiblength x == 1000]

result = head fiblist

main = do
  print result

