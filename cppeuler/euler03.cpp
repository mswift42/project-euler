// euler03.cpp
// Largest prime factor
// Problem 3
// The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?

#include <iostream>
#include <cmath>
#define targetnumber 600851475143
#define searchlimit (int) sqrt(targetnumber)

bool isPrime(int n) {
  if (n ==1 || n ==2) {
    return true;
  }
  if (n % 2 ==0) {
    return false;
  }
  for (int i = 3; i <= sqrt(n); i+=2) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

int main() {
  int current = searchlimit;
  while(true) {
    if (targetnumber % current == 0 && isPrime(current)) {
      std::cout << current << std::endl;
      return 0;
    }
    current--;
  }
  return -1;
}
