{-Self powers
Problem 48

The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.
-}

s = show $ sum [x ^ x | x <- [1..1000]]

result = drop (length s -10) s

main = print result


