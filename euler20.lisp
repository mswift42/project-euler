(defun factorial (x)
  (reduce #'* (loop for i from 1 to x collecting i)))

(defun number-to-list (num)
  (map 'list #'digit-char-p (prin1-to-string num)))

(defun result ()
  (reduce #'+ (number-to-list (factorial 100))))
