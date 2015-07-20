// euler10.cpp
// Summation of primes
// Problem 10
// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

// Find the sum of all the primes below two million.

#include <iostream>
#include <vector>
#include "./tools.h"

#define sievelimit 2000000

int main() {
  long long sum = 0;
  std::vector<int> ps = primeSieve(sievelimit);
  for (int i = 0; i<sievelimit; i++) {
    sum += ps[i];
  }
  std::cout << sum << std::endl;
}
