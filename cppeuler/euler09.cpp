// euler09.cpp
// Special Pythagorean triplet
// Problem 9
// A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

// a2 + b2 = c2
// For example, 32 + 42 = 9 + 16 = 25 = 52.

// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.
#include <iostream>

int main() {
  for (int c = 100; c < 1000; c++) {
    for (int b = 100; b < c; b++) {
      for (int a = 100; a < b; a++) {
        if (a*a + b*b == c*c) {
          if (a + b + c == 1000) {
            std::cout << a*b*c << std::endl;
          }
        }
      }
    }
  }
}
