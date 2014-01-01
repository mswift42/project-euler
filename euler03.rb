# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

$limit = Math.sqrt(600851475143).to_i + 1

def euler_03()
  "go from $limit down to the first number that is
   a factor of 600851475143 and a prime number."
  start = $limit
  while true
      if (600851475143.modulo start) == 0 && start.prime?
        return start
      end

      start -= 1

  end
end
"martin".empt
