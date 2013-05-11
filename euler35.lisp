(load "~/project-euler/miller-rabin.lisp")

(defun number-to-list (num)
  (map 'list #'digit-char-p (prin1-to-string num)))

(defun number-from-list (lst)
  (reduce #'(lambda (x y) (+ (* x 10) y)) lst))

(defun rot-1 (lst)
  (append (rest lst) (list (first lst))))

(defun rotate (lst)
  (loop
     for i in lst
     for a = lst then (rot-1 a)
     collect a))

(defun rotate-nr (nr)
  ( mapcar #'number-from-list (rotate (number-to-list nr))))

(defun all-prime-p (nr)
  (every #'(lambda (x) (miller-rabin-test x 5)) (rotate-nr nr)))

(defun euler-35 ()
  (loop
       for i from 1 to 1000000
       when (all-prime-p i) count i))
