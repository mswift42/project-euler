(defun number-to-list (num)
  (map 'list #'digit-char-p (prin1-to-string num)))

(defun factorial (num)
  (reduce #'* (loop for i from 1 to num collecting i)))

(defun factorial-sum (num)
  (reduce #'+ (mapcar #'factorial (number-to-list num))))

(defun result ()
  (loop
       for i from 3 to 100000
       when (= i (factorial-sum i))
       summing i))





