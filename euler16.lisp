(defun number-to-list (num)
  (map 'list #'digit-char-p (prin1-to-string num)))

(defun result ()
  (reduce #'+ (number-to-list (expt 2 1000))))
