;; Longest Collatz sequence Problem 14

;; The following iterative sequence is defined for the set of positive
;; integers:

;; n → n/2 (n is even) n → 3n + 1 (n is odd)

;; Using the rule above and starting with 13, we generate the
;; following sequence: 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

;; It can be seen that this sequence (starting at 13 and finishing at
;; 1) contains 10 terms. Although it has not been proved yet (Collatz
;; Problem), it is thought that all starting numbers finish at 1.

;; Which starting number, under one million, produces the longest
;; chain?

;; NOTE: Once the chain starts the terms are allowed to go above one
;; million.

(ns euler14.clj)

(defn collatz
  "return next number in collatz sequence"
  [n]
  (if (even? n)
    (/ n 2)
    (+ (* n 3) 1)))

(defn collatz-length
  "return length of collatz sequence for a given number
   (collatz-length 13) -> 10"
  [n]
  (let [length (inc (count (take-while
                            (partial not= 1) (iterate collatz n))))]
    (list length n)))

(def coll-memoized
  (memoize collatz-length))

(defn max-coll
  [l1 l2]
  (if (> (first l1) (first l2))
    l1
    l2))

(defn euler14
  []
  (reduce max-coll (map coll-memoized (range 1 1000000))))
