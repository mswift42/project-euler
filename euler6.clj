(defn square
  [x]
  (* x x))

(defn sum-squares
  []
  (reduce + (map square (range 1 101))))

(defn squared-sum
  []
  (square (reduce + (range 1 101))))

(defn result
  []
  (- (squared-sum) (sum-squares)))
