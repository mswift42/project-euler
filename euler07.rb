# 10001st prime Problem 7

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we
# can see that the 6th prime is 13.

# What is the 10 001st prime number?

require 'prime'

def euler_07()
  count = 0
  (1..1000000000).each do |i|
    if i.prime?
      count += 1
    end
    if count == 10001
      return i
    end
  end
end
