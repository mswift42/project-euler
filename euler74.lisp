(defun number-to-list (num)
  (map 'list #'digit-char-p (prin1-to-string num)))

(defun factorial (num)
  (reduce #'* (loop for i from 1 to num collecting i)))

(defun facsum (num)
  (reduce #'+ (mapcar #'factorial (number-to-list num))))

(defun count-length (num)
  (loop
       for x1 = (facsum num) then (facsum x1)
       collecting x1 into nums
       when (= (count x1 nums) 2)
       return nums))

(defun euler-74 ()
  (loop
       for i from 1 to 1000000
       when (= (length (count-length i)) 60)
       counting i))
