(defun collatz (x)
  (if (evenp x)
      (/ x 2)
      (+ (* x 3) 1)))

(defun collatz-sequence (x)
  (1+ (loop for x1 = (collatz x) then (collatz x1)
	    count 1
	    until (= x1 1))))

(defun result ()
  (loop with max-i = 0 and max-x = 0
        for i from 1 to 1000000
        for x = (collatz-sequence i)
        when (> x max-x)
        do (setf max-i i max-x x)
        finally (return (values max-i max-x))))
