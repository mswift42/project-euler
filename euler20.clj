(defn factorial
  [x]
  (reduce * (range 1N (inc x))))


(defn int-to-digits
  [n]
  (for [character (str n)] (Integer/parseInt (str character))))

(defn euler-20
  []
  (reduce + (int-to-digits (factorial 100N))))
