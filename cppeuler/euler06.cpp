// euler06.cpp
// Sum square difference
// Problem 6
// The sum of the squares of the first ten natural numbers is,

// 12 + 22 + ... + 102 = 385
// The square of the sum of the first ten natural numbers is,

// (1 + 2 + ... + 10)2 = 552 = 3025
// Hence the difference between the sum of the squares of the first ten
// natural numbers and the square of the sum is 3025 − 385 = 2640.

// Find the difference between the sum of the squares of the first one
// hundred natural numbers and the square of the sum.

#include <iostream>

int square(int n) {
  return n * n;
}

int sumSquares() {
  int sum = 0;
  for (int i = 1; i <=100; i++) {
    sum += square(i);
  }
  return sum;
}

int squaredSum() {
  return (square(50 * 101));
}

int main() {
  std::cout << squaredSum() - sumSquares() << std::endl;
}
