;; Pandigital products
;; Problem 32

;; We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

;; The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

;; Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
;; HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

(defun number-to-list (nr)
  (map 'list #'digit-char-p (prin1-to-string nr)))

(defun nine-digits-p (multiplicand multiplier )
  (= (length (equationlist multiplicand multiplier (* multiplicand
						      multiplier))) 9))

(defun equationlist (multiplicand multiplier product)
  (append (number-to-list multiplicand) (number-to-list multiplier)
	  (number-to-list product)))

(defun pandigital (multiplicand multiplier)
  (equal (sort (equationlist multiplicand multiplier
			     (* multiplicand multiplier)) #'<)
	 '(1 2 3 4 5 6 7 8 9)))

(defun pandigital-list ()
  (loop
       for i from 1 to 2000 collect
       (loop for j from 2 to 2000
	  when (and (nine-digits-p i j) (pandigital i j)) collect (* i j))))


(defun euler-32 ()
  (reduce #'+ (reduce #'union (pandigital-list))))

