# Smallest multiple Problem 5

# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all
# of the numbers from 1 to 20?

# This is very very similar to my haskell solution in euler5.hs:

def euler_05
  (1..20).inject (:lcm)
end
