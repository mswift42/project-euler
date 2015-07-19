// euler05.cpp
// Smallest multiple
// Problem 5
// 2520 is the smallest number that can be divided by each of the numbers
// from 1 to 10 without any remainder.

// What is the smallest positive number that is evenly divisible by all
// of the numbers from 1 to 20?

#include <iostream>
#include <numeric>
#include <vector>

int gcd(int a, int b) {
  for (;;) {
    if (a == 0){
      return b;
    }
    b %= a;
    if (b ==0) {
      return a;
    }
    a %= b;
  }
  return -1;
}

int lcm(int a, int b) {
  int temp = gcd(a,b);
  return temp ? (a / temp * b) : 0;
}

int main() {
  std::vector<int> nums{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
  int result = std::accumulate(nums.begin(), nums.end(), 1, lcm);
  std::cout << result << std::endl;
}
