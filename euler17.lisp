;; Number letter counts
;; Problem 17

;; If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

;; If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

;; NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

;; This is of course very easy with CL's format "~r" :)


(defun remove-space-and-hyphen (nr)
  (delete #\- (delete #\space (format nil "~r" nr))))

(defun count-letters (nr)
  (cond
    ((<= nr 100) (length (remove-space-and-hyphen nr)))
    ((member nr *exceptions*) (length (remove-space-and-hyphen nr)))
    (t (+ (length (remove-space-and-hyphen nr)) 3))))


(defparameter *exceptions* '(200 300 400 500 600 700 800 900 1000))

(defun euler-17 ()
  (loop
       for i from 1 to 1000
       sum (count-letters i)))
