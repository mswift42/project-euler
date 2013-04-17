(defun divide-3-5 (num)
  (or (= 0 (mod num 5))
      (= 0 (mod num 3))))


(defun result ()
  (loop for i from 1 to 999 when (divide-3-5 i) sum i))



