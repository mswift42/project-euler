// euler02.cpp
// Even Fibonacci numbers
// Problem 2
// Each new term in the Fibonacci sequence is generated by adding the
// previous two terms. By starting with 1 and 2, the first 10 terms will
// be:

// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

// By considering the terms in the Fibonacci sequence whose values do not
// exceed four million, find the sum of the even-valued terms.

#include <iostream>

int main() {
  int a = 1;
  int b = 1;
  int temp;
  int result = 0;
  while (a < 4000000) {
    temp = a;
    a = b;
    b = temp + a;
    if (a % 2 == 0) {
      result += a;
    }
  }
  std::cout << result << std::endl;
}