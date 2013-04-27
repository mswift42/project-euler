(defun fib (x)
  (loop
       with a = 0 and b = 1 and temp = 0
       for i from 1 to x
       do (setf temp b b (+ a b) a temp )
       finally (return a)))


(defun number-to-list (num)
  (map 'list #'digit-char-p (prin1-to-string num)))

(defun number-of-digits (num)
  (length (number-to-list num)))

(defun result ()
    (loop
	 for i from 1 to 10000
	 for x = (number-of-digits (fib i))
	 when (= x 1000) return i))

