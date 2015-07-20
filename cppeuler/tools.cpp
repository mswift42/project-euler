// tools.cpp
// utility functions for project euler.

#include <iostream>
#include <vector>

// primeSieve returns a prime sieve up to n elements.
// if at vector[a] a is not null, the number is prime.
std::vector<int> primeSieve(int n) {
  std::vector<int> ps;
  ps.push_back(0);
  ps.push_back(0);
  for (int i = 2; i<= n; i++) {
    ps.push_back(i);
  }
  for (int i = 2; i <= n; i++) {
    for (int j = i + i; j <=n;j+=i) {
      ps[j] = 0;
    }
  }

  return ps;
}

