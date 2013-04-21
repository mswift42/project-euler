;; Translated from my Haskell Solution:

(defn gcd
  [x y]
  (if (zero? y) x
      (gcd y (mod x y))))

(defn lcm
  [x y]
  (cond
   (or (zero? y) (zero? x)) 0
   :else (Math/abs (* (quot x (gcd x y)) y))))


(defn result
  []
  (reduce lcm (range 1 21)))
