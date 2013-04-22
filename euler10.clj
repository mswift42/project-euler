;;; Sum of all primes below 2 000 000

(require 'tools)

(defn result []
 (reduce + (filter prime? (range 1 2000000))))
