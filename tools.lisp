(defun sieve-of-eratosthenes (maximum)
  (let ((sieve (make-array (1+ maximum) :element-type 'bit
                                          :initial-element 0)))
    (loop for candidate from 2 to maximum
          when (zerop (bit sieve candidate))
            collect candidate
            and do (loop for composite from (expt candidate 2) 
                                         to maximum by candidate
                          do (setf (bit sieve composite) 1)))))

(defun number-to-list (num)
  (map 'list #'digit-char-p (prin1-to-string num)))

(defun permutations (lst)
  (cond
    ((null lst)nil)
    ((null (rest lst)) (list lst))
    (t (loop
	    for i in lst
	    append (mapcar (lambda (x) (cons i x))
			   (permutations (remove i lst)))))))

(defun number-from-list (lst)
  (reduce #'(lambda (x y) (+ (* x 10) y)) lst))
