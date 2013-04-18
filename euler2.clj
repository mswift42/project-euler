(def fib
  (memoize
   (fn [x]
     (if (< x 2) 1
         (+ (fib (dec (dec x))) (fib (dec x)))))))

(defn result []
  (reduce + (filter even? (take-while (partial > 4000000)
                                      (map fib (iterate inc 0))))))
  
