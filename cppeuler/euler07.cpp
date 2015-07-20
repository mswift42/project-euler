// euler07.cpp
// 10001st prime
// Problem 7
// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can
// see that the 6th prime is 13.

// What is the 10 001st prime number?
#include <vector>
#include <iostream>
#include "./tools.h"

#define sievelimit 200000

int main() {
  std::vector<int> ps = primeSieve(sievelimit);
  int counter = 0;
  for (int i = 0; i < sievelimit; i++) {
    if (ps[i] != 0) {
      counter++;
    }
    if (counter == 10001) {
      std::cout << ps[i] << std::endl;
    }
  }

}


