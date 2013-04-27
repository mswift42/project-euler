
fac n = product [1..n]

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]


result = sum $ digs (fac 100)  

main = 
  print result
