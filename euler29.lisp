;; count distinct powers of a^b for 2<=a<=100, 2<=b<=100

(defun distpower ()
  (loop
       for i from 2 to 100 collect
       (loop
	    for j from 2 to 100
	    collect (expt i j))))

(defun euler-29 ()
  (length (reduce #'union (distpower))))
