# -*- coding: utf-8 -*-
# Largest palindrome product
# Problem 4

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palin(n)
  "is number a palindrome"
  n.to_s == n.to_s.reverse!
end

def euler_04()
  palindromes = []
  (100..999).each do |i|
    (100..999).each do |j|
      if is_palin(i*j)
        palindromes << i*j
      end
    end
  end
  return palindromes.max
end
