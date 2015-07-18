// euler04.cpp
// Largest palindrome product
// Problem 4
// A palindromic number reads the same both ways. The largest palindrome
// made from the product of two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.

#include <algorithm>
#include <iostream>

std::string reverseString(std::string s) {
  std::string reverse = std::reverse(s.begin(), s.end());
  return reverse;
}


bool isPalindrome(int n) {
  
}
