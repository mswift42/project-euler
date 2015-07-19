// euler04.cpp
// Largest palindrome product
// Problem 4
// A palindromic number reads the same both ways. The largest palindrome
// made from the product of two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.

#include <algorithm>
#include <iostream>
#include <string>



bool isPalindrome(int n) {
  std::string str, rev;
  str = std::to_string(n);
  rev = str;
  std::reverse(rev.begin(), rev.end());
  return (str == rev);
}

int main() {
  int max = 0;
  int product;
  for (int i = 100; i<1000; i++) {
    for (int j = 100; j < 1000; j++) {
      product = i * j;
      if (isPalindrome(product)) {
        if (product > max) {
          max = product;
        }
      }
    }

  }
  std::cout << max << std::endl;
}
