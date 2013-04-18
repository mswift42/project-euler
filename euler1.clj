(defn divide-by-3-5 [x]
  (or (zero? (mod x 3))
      (zero? (mod x 5))))


(defn result []
  (reduce + (filter divide-by-3-5 (range 1000))))
