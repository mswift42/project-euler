// euler01.cpp
// Multiples of 3 and 5 Problem 1 If we list all the natural numbers
// below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum
// of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

#include <iostream>

bool isMultipleOf3Or5(int n) {
  return (n % 3 == 0 || n % 5 == 0);
}

int main() {
  int sum = 0;
  for (int i = 0; i < 1000; i++) {
    if (isMultipleOf3Or5(i)) {
      sum += i;
    }
  }
  std::cout << sum << std::endl;
}


